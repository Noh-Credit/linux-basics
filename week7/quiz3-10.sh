#!/bin/sh
file_count=0
dir_count=0
for item in *
do
	if [ -d "$item" ]
	then
		#echo "$item 디렉토리"
		dir_count=$((dir_count+1))
	elif [ -f "$item" ]
	then
		#echo "$item 파일"
		file_count=$((file_count+1))
	else
		echo "$item x"
	fi
done
echo "파일 수 : $file_count"
echo "디렉토리 수 : $dir_count"
exit 0
