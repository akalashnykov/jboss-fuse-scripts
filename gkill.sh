#!/bin/bash
# gkill.sh processname
cnt=`ps aux|grep $1|grep -v "grep" | grep -v "gkill"|wc -l`
if [ "$cnt" -gt 0 ] 
then
  echo "Found $cnt processes"
  echo -n "killing " `pgrep -f $1`
  echo
  pgrep -f $1|xargs kill -9
else
  echo "No processes found"
fi


