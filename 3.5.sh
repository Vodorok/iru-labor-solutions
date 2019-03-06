echo $(diff -l "$1" "$2" | grep "^>" | wc -l)
echo $(diff -l "$1" "$2" | grep "^<" | wc -l)
