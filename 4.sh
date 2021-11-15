#!/bin/bash
read -p "Nhập số lượng thư mục cần sửa: " a
while [ -z $a ];
do
	echo "❌ Số lượng thư mục cần sửa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập số lượng thư mục cần sửa: " a
done	
read -p "Nhập tên thư mục cần sửa: " o
while [ -z $o ];
do
	echo "❌ Tên thư mục cần sửa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần Sửa: " o
done	
for((i=1;i<=$a;i++))
do	
	if test -e $o-$i
	then
		break
	elif test -e $o
	then
		break 
	fi
	while test ! -e $o-$i;
	do
		echo "❌ Tên thư mục cần sửa không tồn tại!"
		echo "❌ Vui lòng nhập tên khác!"
		read -p "Nhập tên thư mục cần Sửa: " o
	done	
done	
read -p "Nhập tên thư mục mới: " n
while [ -z $n ];
do
	echo "❌ Tên thư mục mới chưa nhập!"
	echo "❌ Vui lòng nhập lại!"
	read -p "Nhập tên thư mục mới: " n
done
for((i=1;i<=$a;i++))
do
	while test -e $n-$i;
	do
		echo "❌ Tên thư mục mới đã tồn tại!"
		echo "❌ Vui lòng nhập tên khác!"
		read -p "Nhập tên thư mục mới: " n
	done	
done
if test ! -e $o
then
	echo "❌ Thư mục "$o" không tồn tại"
else
	mv $o $n
	echo "✅ Sửa thành công thư mục "$o" thành thư mục "$n
fi
for((i=1;i<=$a;i++))
do
	if test ! -e $o-$i
	then
		echo "❌ Thư mục "$o-$i" không tồn tại"
	else
		mv $o-$i $n-$i
		echo "✅ Sửa thành công thư mục "$o-$i" thành thư mục "$n-$i
	fi
done
exit 0
