#!/bin/bash
read -p "Nhập tên thư mục cần sao chép: " o
while [ -z $o ];
do
	echo "❌ Tên thư mục cần sao chép chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần sao chép: " o
done
while test ! -e $o;
do
	echo "❌ Tên thư mục cần sao chép không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần sao chép: " o
done
echo "Nhập tên thư mục chứa thư mục sao chép:"	
read n
while [ -z $n ];
do
	echo "❌ Tên thư mục chứa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	echo "Nhập tên thư mục chứa thư mục sao chép:"	
	read n
done
while test ! -e $n;
do
	echo "❌ Tên thư mục chứa không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	echo "Nhập tên thư mục chứa thư mục sao chép:"	
	read n
done		
mv $o $n 
echo "✅ Sao chép thành công thư mục "$o" vào trong thư mục "$n
exit 0
