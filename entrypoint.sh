#!/bin/sh
while [ 1 ]
do
   WAIT=$(shuf -i $1-$2 -n 1)
   sleep $(echo "scale=4; $WAIT/1000" | bc)
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   case "$I" in
      "1") echo "$D Update 1 row in table 'shopping_card' HTTP/1.0 200 2326"
      ;;
      "2") echo "$D Added 1 row to table 'card_item' HTTP/1.0 200 6842"
      ;;
      "2") echo "$D Added 1 row to table 'card_item' HTTP/1.0 200 6842"
      ;;
      "4") echo "$D Removed 1 row from table 'card_item' HTTP/1.0 200 2326"
      ;;
   esac
done
