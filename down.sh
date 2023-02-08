#!/bin/bash

num=6
dir=/tmp/data

mkdir -p $dir

while read url
do 
  [[ $url =~ ^#.* ]] && continue
    mwget -d $dir -n $num $url
    if [ $? -eq 0 ];then
      echo -e "✅ '$url'\n"
    else
      echo -e "❌ '$url'\r\n"
    fi
  fi
done < filelist.txt

echo "downloaded data in path $dir"
