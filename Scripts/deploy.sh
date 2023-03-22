#! /bin/bash

# Ensure that `pwd` is always the same directory as the script
cd "$( dirname "${BASH_SOURCE[0]}" )/.."

source Scripts/setup.sh

#------------------------------------------------------------------------------
# Execution Traps
#------------------------------------------------------------------------------

onError() {
  RETURN_CODE=$?
  echoFancy "Exited with Error: ${RETURN_CODE}"

  exit ${RETURN_CODE}
}

onExit() {
  disableExitTrapping
  echoFancy "Exiting ${BASH_SOURCE[0]}"

  exit ${RETURN_CODE}
}

#------------------------------------------------------------------------------
# Environment Validation
#------------------------------------------------------------------------------
export GITHUB_API="https://github.com/api/v3"
export GITHUB_OWNER="Salesforce-Async-Messaging"
export REPO_NAME="Swift-Package-InAppMessaging"
export REMOTE=${REMOTE:-origin}
export PROCESS="deploy.sh"
export RETURN_CODE=0
export TAG_VERSION=unknown
export RELEASE_VERSION=unknown
export RELEASE_BRANCH=""
export TAG_TEST='^[0-9]+\.[0-9]+\.[0-9]+$'
export RELEASE_TEST='^[0-9]+\.[0-9]+\.[0-9]+$'
export RELEASE_BRANCH_TEST='^release-([0-9]\.[0-9]+\.[0-9]+)$'
export UICHECKSUM=unknown
export CORECHECKSUM=unknown
export SWIFT_PACKAGE="Package.swift"
export SWIFT_PACKAGE_TEMPLATE="Template/Package-Template.swift"
export COMPUTE_CHECKSUM='swift package compute-checksum'
export SMICLIENTCORE_ZIP='SMIClientCore-Release.xcframework.zip'
export SMICLIENTUI_ZIP='SMIClientUI-Release.xcframework.zip'
export AWS_PATH='https://salesforce-async-messaging.s3.amazonaws.com/public/ios/'

validate REMOTE

validate GITHUB_API
validate REPO_NAME

validate_silent PUBLIC_GITHUB_OAUTH_TOKEN "PUBLIC_GITHUB_OAUTH_TOKEN is not set. You must add a valid Github Oauth Token to your environment: see https://git.soma.salesforce.com/settings/tokens"
validate_silent PUBLIC_GITHUB_USER_NAME "PUBLIC_GITHUB_USER_NAME is not set. This is required to make API requests"

#------------------------------------------------------------------------------
# TUI Operations
#------------------------------------------------------------------------------

readTag() {
  read -p "Please enter a tag name: " TAG_VERSION

  if [[ "${TAG_VERSION}" =~ ${TAG_TEST} ]]; then
    prompt "Now using tag \"${TAG_VERSION}\": Proceed?"
  else
    echoFancy "Tag: ${TAG_VERSION} is invalid. Must be in the format: X.X.X  where X are integers"
    return 1
  fi
}

readRelease() {
  read -p "Please enter a release version: " RELEASE_VERSION

  if [[ "${RELEASE_VERSION}" =~ ${RELEASE_TEST} ]]; then
    RELEASE_BRANCH=release-${RELEASE_VERSION}

    prompt "Create branch ${RELEASE_BRANCH}?"
    git checkout -b "${RELEASE_BRANCH}"
  else
    echoFancy "Release: ${RELEASE_VERSION} is invalid. Must be in the format: X.X.X"
    return 1
  fi
}

#------------------------------------------------------------------------------
# Tag Operations
#------------------------------------------------------------------------------

validateBranch() {
  local BRANCH=$(getBranchName)

  if [[ "${BRANCH}" =~ ${RELEASE_BRANCH_TEST} ]]; then
    CAPTURE="${BASH_REMATCH[1]}"
    RELEASE_BRANCH=${BRANCH}

    echoFancy "Branch: ${BRANCH} conforms to valid release branch spec"
    prompt "Building tag for release: ${CAPTURE} Proceed?"
  else
    echoFancy "Branch: ${BRANCH} is invalid. Must be in the format: release-x.x.x"
    prompt "Would you like to create a release branch?"
    readRelease
  fi
}

# replaces ${...} markers found in the templated file with matching
# environment variables.
template() {
  echo ${SWIFT_PACKAGE_TEMPLATE}
  echo ${SWIFT_PACKAGE}
  perl -p -i -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < "${SWIFT_PACKAGE_TEMPLATE}" > "${SWIFT_PACKAGE}" 2> /dev/null
}

checkChangesAndPush() {
  echoFancy "Displaying Diff for review"
  git diff .

  prompt "Please ensure the above diff is correct: Proceed?"
  git add .
  git commit -S -m "Changing Package.swift file for the ${TAG_VERSION} release"
  git push ${REMOTE} $(getBranchName)
}

validateSwiftPackageManagerBranch() {
  prompt "Please validate the branch ${RELEASE_BRANCH} has a valid Swift Package in the test app. Proceed?"
}

mergeBranchIntoMain() {
  git checkout main
  
  prompt "Successfully checked out main. Ok to merge ${RELEASE_BRANCH} into main?"

  git merge ${RELEASE_BRANCH}
}

tag() {
  git tag "${TAG_VERSION}"

  prompt "Successfully tagged ${TAG_VERSION}. Ok to push?"

  # 1. Merge the tag back to your local branch.
  # 2. Push your local branch, to ensure it is up-to-date
  # 3. Push the tag to the remote.

  git merge ${TAG_VERSION}
  git push ${REMOTE} $(getBranchName)
  git push ${REMOTE} ${TAG_VERSION}
}

#------------------------------------------------------------------------------
# Fetch Packages
#------------------------------------------------------------------------------
getCoreCheckSum() {
  local CORE_PATH=${AWS_PATH}${TAG_VERSION}/${SMICLIENTCORE_ZIP}
  curl -o ${SMICLIENTCORE_ZIP} ${CORE_PATH}
  CORECHECKSUM=`${COMPUTE_CHECKSUM} ${SMICLIENTCORE_ZIP}`
  rm ${SMICLIENTCORE_ZIP}
}

getUICheckSum() {
  local UI_PATH=${AWS_PATH}${TAG_VERSION}/${SMICLIENTUI_ZIP}
  curl -o ${SMICLIENTUI_ZIP} ${UI_PATH}
  UICHECKSUM=`${COMPUTE_CHECKSUM} ${SMICLIENTUI_ZIP}`
  rm ${SMICLIENTUI_ZIP}
}

#------------------------------------------------------------------------------
# Github API
#------------------------------------------------------------------------------

validateBranch
readTag
getCoreCheckSum
getUICheckSum
template
checkChangesAndPush
validateSwiftPackageManagerBranch
mergeBranchIntoMain
tag

