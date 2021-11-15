#!/bin/bash
read -p "Nhập tên thư mục cần tạo: " n
while [ -z $n ];
do
	echo "❌ Tên thư mục cần tạo chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần tạo: " n
done
read -p "Nhập số lượng thư mục cần tạo: " a
while [ -z $a ];
do
	echo "❌ Số lượng thư mục cần tạo chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập số lượng thư mục cần tạo: " a
done
for((i=1;i<=$a;i++))
do
	while test -e $n-$i;
	do
		echo "❌ Tên thư mục cần tạo tồn tại!"
		echo "❌ Vui lòng nhập tên khác!"
		read -p "Nhập tên thư mục cần tạo: " n
	done
	mkdir $n-$i
	echo "✅ Tạo thành công thư mục "$n-$i
done
exit 0
