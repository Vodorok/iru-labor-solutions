#!/bin/bash

echo $(whoami)
echo $(date '+%Y. %m. %d.')
ids=$(users)
echo "${ids[@]}" | tr ' ' '\n' | sort -u
echo $(who -b) | sed -En 's/\s*system boot\s*//p'
echo $$
