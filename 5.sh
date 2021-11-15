#!/bin/bash
read -p "Nhập tên thư mục cần xóa: " n
while [ -e $n ];
do
	echo "❌ Tên thư mục cần xóa chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần xóa: " n
done
while test ! -e $n;
do
	echo "❌ Tên thư mục cần xóa không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần xóa: " n
done
rmdir $n
echo "✅ Xóa thành công thư mục "$n
exit 0
