#! /bin/bash
set -o errtrace

#------------------------------------------------------------------------------
# Error Handling
#------------------------------------------------------------------------------

# disables Error trapping
disableErrorTrapping() {
  trap '' ERR
}

# Traps all errors and executes function onError
enableErrorTrapping() {
  FUNCTION=${1:-onError}
  trap ${FUNCTION} ERR
}

disableExitTrapping() {
  trap '' SIGINT SIGTERM EXIT
}

enableExitTrapping() {
  FUNCTION=${1:-onExit}
  trap ${FUNCTION} SIGINT SIGTERM EXIT
}

enableErrorTrapping
enableExitTrapping

#------------------------------------------------------------------------------
# Environment Setup
#------------------------------------------------------------------------------
export BUILD_CAUSE=${BUILD_CAUSE:-Unknown}
export PROCESS=${PROCESS:-${BUILD_SCHEME:-${BASH_SOURCE[0]}}}

#------------------------------------------------------------------------------
# Helper Functions
#------------------------------------------------------------------------------

# Takes a variable name and validates that variable has been set.
validate() {
  validate_silent "$@"
  echoFancy "+++ Validating Environment: $VARNAME = $VARVALUE"
}

validate_silent() {
  VARNAME=$1
  MESSAGE=${2:-"${VARNAME} is unset"}

  VARVALUE=${!VARNAME}

  if [ -z ${VARVALUE} ];
  then
    echoFancy "${MESSAGE}"
    return 1;
  fi
}

# Wraps output in easy to see format
echoFancy() {
  if [ -z "${QUIET}" ]; then
    echo ""
    echo "[${PROCESS}] #--------------------------------------------------------"
    echo "[${PROCESS}] # $1"
    echo "[${PROCESS}] #--------------------------------------------------------"
  fi
}

#------------------------------------------------------------------------------
# TUI Operations
#------------------------------------------------------------------------------

prompt() {
  read -p "$1 (y/n): " -n 1 -r
  echo

  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 0
  fi
}

#------------------------------------------------------------------------------
# Git Functions
#------------------------------------------------------------------------------
getBranchName() {
  git rev-parse --abbrev-ref HEAD
}
