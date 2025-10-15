#!/bin/bash
cd "$(dirname "$0")"
./ItalianLock.sh
prog_exit=$?
cd ~

# Close terminal only if interrupted
if [[ $prog_exit -ne 0 ]]; then
    exit
fi
export ITALIAN_OFF=1
exec bash
