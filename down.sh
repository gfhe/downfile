#!/bin/bash
mkdir /data

while read url
do 
  wget -P data $url
  if [ $? -eq 0 ];then
    echo -e "✅ '$url'\n"
	else
    echo -e "❌ '$url'\r\n"
	fi
done < filelist.txt

echo "find all files in path /data"
