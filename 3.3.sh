#!/bin/bash

while IFS= read -r line; do
    lead="$(cut -d' ' -f1 <<<"$line")"
    if [ "$lead" -eq "$lead" ] 2>/dev/null
    then
        if (( lead % $1  == 0 )); then
            sec="$(cut -d' ' -f2 <<<"$line")"
            third="$(cut -d' ' -f3 <<<"$line")"
            fourth="$(cut -d' ' -f4 <<<"$line")"
            fifth="$(cut -d' ' -f5 <<<"$line")"
            printf '%s %s %s %s%s\n' "$lead" "$sec" "$third" "$fourth" "$fifth"



        fi
    fi   
done
