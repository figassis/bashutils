#!/bin/bash

mydir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in `find $mydir/modules -type f -name "*.sh"`; do [ -f $file ] && source $file; done
