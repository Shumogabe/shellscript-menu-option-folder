#!/bin/bash
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
	echo "✅ Các thư mục cần tìm: "
	find /home/shumogabe/Desktop -type d -empty	
else
	echo "✅ Các thư mục cần tìm: "
	find $a -type d -empty
fi
