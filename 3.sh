#!/bin/bash
read -p "Nhập tên thư mục cần sửa: " o
while [ -z $o ];
do
	echo "❌ Tên thư mục cần sửa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần sửa: " o
done	
while test ! -e $o;
do
	echo "❌ Tên thư mục cần sửa không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần sửa: " o
done	
read -p "Nhập tên thư mục mới: " n
while test -e $n;
do
	echo "❌ Tên thư mục mới đã tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục mới: " n
done		
mv $o $n 
echo "✅ Sửa thành công thư mục "$o" thành thư mục "$n
exit 0
