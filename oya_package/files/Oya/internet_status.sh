
#!/bin/sh

# Checks the internet connection state by pinging google.com every 5 seconds
# and writes the change in interent state by calling the relevant commands

# Refer /usr/bin/internet_status and /etc/init.d/internet_status for more information.

write_status() {
  internetStatus=`internet_status connected get`
  if [ "${internetStatus}" != "$2" ]; then
    internet_status connected set $2
    internet_status commit
  fi
}

(
while true
do
  echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    write_status "internet" "1"
  else
    write_status "internet" "0"
  fi
  sleep 5
done
) & internet_status pid set $!
