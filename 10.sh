#!/bin/bash
read -p "Nhập tên thư mục cần di chuyển: " o
while [ -z $o ];
do
	echo "❌ Tên thư mục cần di chuyển chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần di chuyển: " o
done
while test ! -e $o;
do
	echo "❌ Tên thư mục cần di chuyển không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần di chuyển: " o
done
echo "Nhập tên thư mục chứa thư mục di chuyển:"	
read n
while [ -z $n ];
do
	echo "❌ Tên thư mục chứa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	echo "Nhập tên thư mục chứa thư mục di chuyển:"	
	read n
done
while test ! -e $n;
do
	echo "❌ Tên thư mục chứa không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	echo "Nhập tên thư mục chứa thư mục di chuyển:"	
	read n
done		
mv $o $n 
echo "✅ Di chuyển thành công thư mục "$o" vào trong thư mục "$n
exit 0
