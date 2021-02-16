#!/bin/bash

source _impl/control-functions.sh
source _impl/install-functions.sh
source _impl/print-write.sh
source _impl/utils.sh


main() {
  if [[ $1 == install ]]
  then
    _install $2
  elif [[ $1 == update ]]
  then
    _update $2
  elif [[ $1 == uninstall ]]
  then
    _uninstall
  elif [[ $1 == checkhealth ]]
  then
    _checkhealth
  else
    _help
  fi
}

main $@
