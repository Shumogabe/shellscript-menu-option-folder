#!/bin/bash
read -p "Nhập tên thư mục cần tạo: " n
while test -e $n;
do
	echo "❌ Tên thư mục cần tạo tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần tạo: " n
done	
mkdir $n
echo "✅ Tạo thành công thư mục "$n
exit 0
