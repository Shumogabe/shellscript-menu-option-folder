#!/bin/bash
read -p "Nhập số lượng thư mục cần sao chép: " a
while [ -e $a ];
do
	echo "❌ Số lượng thư mục cần sao chép chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập số lượng thư mục cần sao chép: " a
done	
read -p "Nhập tên thư mục cần sao chép: " o	
while [ -e $o ];
do
	echo "❌ Tên thư mục cần sao chép chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần sao chép: " o	
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
		echo "❌ Tên thư mục cần sao chép không tồn tại!"
		echo "❌ Vui lòng nhập tên khác!"
		read -p "Nhập tên thư mục cần sao chép: " o
	done	
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
if test ! -e $o
then
	echo "❌ Thư mục "$o" không tồn tại"
else
	if test -e $o
	then
		echo ""
	else		
		cp -r $o $n
		echo "✅ Sao chép thành công thư mục "$o" vào trong thư mục "$n
	fi
fi
for((i=1;i<=$a;i++))
do
	if test ! -e $o-$i
	then
		echo "❌ Thư mục "$o-$i" không tồn tại"
	else
		cp -r $o-$i $n
		echo "✅ Sao chép thành công thư mục "$o-$i" vào trong thư mục "$n
	fi
done
exit 0
