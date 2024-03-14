#!/bin/bash

# mkapp - generates folder and file structures for applications of various types
#
# Currently supported:
#  - Bash
#  - Node Web App (Various options)
#  - Python Web App (Flask, Django)
#  - 

# Funcs and vars
__help=`cat <<-HELP
Usage: mkapp [-h|--help|-v|--version] <-t|---type> <bash|node|python> [-n|--name] <appname> [-l|--location] <applocation>
HELP
`
s_appname=""
s_apptype=""
s_apploc=""
s_usercwd=`pwd`

#__settype() {}
#__setname() {}
#__setloc() {}

__args() {
  while [[ "$1" =~ "-" ]]; do
    case $1 in
      -t | --type )
        shift; __settype "$1"
        ;;
      -n | --name )
        shift; __setname "$1"
        ;;
      -l | --location )
        shift; __setloc "$1"
        ;;
      -h | --help )
        echo "$__help"
        ;;
      -v | --version )
        echo "$__version"
        ;;
    esac
  done
}

# Main container
__mkapp() {
  # Set prog states
  __args $@
}

# Run container
__mkapp $@

# Cleanup
unset __mkapp
