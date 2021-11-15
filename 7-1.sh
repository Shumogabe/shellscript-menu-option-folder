#!/bin/bash
read -p "Nhập tên thư mục cần tìm: " f
while [ -z $f ];
do
	echo "❌ Tên thư mục cần tìm chưa nhập!"
	echo "❌ Vui lòng nhập lại!"
	read -p "Nhập tên thư mục cần tìm: " f
done
echo "Nhập tên nơi cần tìm (Nếu không nhập mặc định sẽ tìm ở /Desktop): "	 
read a
while test ! -e $a;
do
	echo "❌ Nơi cần tìm không tồn tại!"
	echo "❌ Vui lòng nhập lại!"
	echo "Nhập tên nơi cần tìm (Nếu không nhập mặc định sẽ tìm ở /Desktop): "	 
	read a
done
if [ -z $a ]
then	
	check1=$( find /home/shumogabe/Desktop -type d -name "*$f*" | wc -l)
	if [ $check1 -lt "1" ]
	then
		echo "✅ Không có thư mục cần tìm: "
	else	
		echo "✅ Các thư mục cần tìm: "	
		find /home/shumogabe/Desktop -type d -name "*$f*"
	fi
else
	check1=$( find $a -type d -name "*$f*" | wc -l)
	if [ $check1 -lt "1" ]
	then
		echo "✅ Không có thư mục cần tìm: "
	else	
		echo "✅ Các thư mục cần tìm: "	
		find $a -type d -name "*$f*"
	fi
	
fi
