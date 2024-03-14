#!/bin/bash

# mkapp - generates folder and file structures for applications of various types
#
# Currently supported:
#  - Bash
#  - Node Web App (Various options)
#  - Python Web App (Flask, Django)
#  - 

# Funcs and vars
s_appname=""
s_apptype=""

# Main container
__mkapp() {
  local args="$@"
}

# Run container
__mkapp $@

# Cleanup
unset __mkapp
