#!/bin/bash
for i in $( ls ); do
  filename=$(basename "$i") # 这三行获取文件名的代码，是从Stack Overflow上偷来的，山外有山
  extension="${filename##*.}"
  filename="${filename%.*}"
  if [[ "$extension" = "pgm" ]]; then
  convert $i  $filename".jpg"
  fi
done
