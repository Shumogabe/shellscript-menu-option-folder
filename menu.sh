#!/bin/bash
while :
do
clear
echo "        Tên server - "$(hostname)
echo ""$(date)
echo ""
echo "                        //"
echo "                       //"
echo '   ||===   ||    || ||   ||   //===\\'
echo '   ||   \\ ||    || ||   ||  //    '
echo "   ||   // ||====|| ||   || ||"
echo '   ||===   ||    || \\   //  \\    '
echo '   ||      ||    ||   ===     \\===//'
echo ""
echo "     -----------------------------"
echo "     |                           |"
echo "     *    M A I N  -  M E N U    *"
echo "     |                           |"
echo "     -----------------------------"
echo ""
echo " ——————————————————————————————————————"
echo "| 	 Chọn mục cần thao tác        |"
echo " ——————————————————————————————————————"
echo "| 1  | Tạo một thư mục                |"
echo "| 2  | Tạo nhiều thư mục              |"
echo "| 3  | Sửa một thư mục                |"
echo "| 4  | Sửa nhiều thư mục              |"
echo "| 5  | Xóa một thư mục                |"
echo "| 6  | Xóa nhiều thư mục              |"
echo "| 7  | Tìm kiếm tên thư mục           |"
echo "| 8  | Sao chép một thư mục           |"
echo "| 9  | Sao chép nhiều thư mục         |"
echo "| 10 | Di chuyển một thư mục          |"
echo "| 11 | Di chuyền nhiều thư mục        |"
echo "| 12 | Cấp quyền thực thi cho thư mục |"
echo "| 13 | Thoát                          |"
echo " —————————————————————————————————————"
echo "Nhập [1-13] để lựa chọn"
read key
case $key in
1)
	./1.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
2)
	./2.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
3)
	./3.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
4)
	./4.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
5)
	./5.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
6)
	./6.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
7)
	./7.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
8)
	./8.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
9)
	./9.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
10)
	./10.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
11)
	./11.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
12)
	./12.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
13)
	exit 0
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
*)
	echo "Không có lựa chọn"
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
esac
done








   
  
















