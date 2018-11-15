#!/bin/sh

#!/bin/sh

write_status() {
  internetStatus=`internet_status get`
  if[ ${internetStatus} != $1 ]; then
    internet_status set $2
    internet_status commit
  fi
}

(
while true
do
  case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
    [23]) write_status "internet" "1";;
    5) write_status "internet" "-1";;
    *) write_status "internet" "0";;
  esac
done
) & internet_status pid set $!
