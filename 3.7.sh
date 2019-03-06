#!/bin/bash

while IFS= read -r line; do
    lead="$(cut -d',' -f1 <<<"$line")"
    arr+=("$lead")
done

printf '%s\n' "${arr[@]}" | tr ' ' '\n' | sort | uniq -c | awk '{ print $2 ": " $1}'

