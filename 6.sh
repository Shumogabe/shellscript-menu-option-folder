#!/bin/bash
read -p "Nhập số lượng thư mục cần xóa: " a
while [ -z $a ];
do
	echo "❌ Số lượng thư mục cần xóa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập số lượng thư mục cần xóa: " a
done	
read -p "Nhập tên thư mục cần xóa: " n
while [ -z $n ];
do
	echo "❌ Tên thư mục cần xóa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần xóa: " n
done
for((i=1;i<=$a;i++))
do	
	if test -e $n-$i
	then
		break
	elif test -e $n
	then
		break 
	fi
	while test ! -e $n-$i;
	do
		echo "❌ Tên thư mục cần xóa không tồn tại!"
		echo "❌ Vui lòng nhập tên khác!"
		read -p "Nhập tên thư mục cần xóa: " n
	done	
done
if test ! -e $n
then
	echo "❌ Thư mục "$n" không tồn tại"
else
	rmdir $n
	echo "✅ Xóa thành công thư mục "$n
fi	
for((i=1;i<=$a;i++))
do 
	if test ! -e $n-$i
	then
		echo "❌ Thư mục "$n-$i" không tồn tại"
	else
		rmdir $n-$i
		echo "✅ Xóa thành công thư mục "$n-$i
	fi
done
exit 0
