#!/bin/bash

echo "inside the script"
fileName="policy_exception_list.txt"
apiName="proc-case1"
echo "$apiName"
echo "here"
if grep -Fxq "$apiName" "$fileName" 
then
  flag=true
  echo "found"
else
  flag=false
  result= $(curl -X GET 'https://api.zippopotam.us/us/33162' )
  echo $result
  echo "API Could not Found in policy_exception_list.txt file"
  exit 0
fi
