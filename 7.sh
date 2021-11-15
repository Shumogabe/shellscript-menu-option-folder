#!/bin/bash
while :
do
clear
echo "          Tên server - "$(hostname)
echo ""$(date)
echo ""
echo "                         //"
echo "                        //"
echo '    ||===   ||    || ||   ||   //===\\'
echo '    ||   \\ ||    || ||   ||  //    '
echo "    ||   // ||====|| ||   || ||"
echo '    ||===   ||    || \\   //  \\    '
echo '    ||      ||    ||   ===     \\===//'
echo ""
echo "      -----------------------------"
echo "      |                           |"
echo "      *  M E N U  -  S E A R C H  *"
echo "      |                           |"
echo "      -----------------------------"
echo ""
echo " ——————————————————————————————————————"
echo "|        Chọn mục cần thao tác         |"
echo " ——————————————————————————————————————"
echo "| 1 | Tìm kiếm theo tên                |"
echo "| 2 | Tìm thư mục rỗng                 |"
echo "| 3 | Quay lại menu chính              |"
echo " ——————————————————————————————————————"
echo "Nhập [1-3] để lựa chọn"
read key
case $key in
1) 
	./7-1.sh
	read -p "Nhấn [Enter] để tiếp tục" key
;;
2)
	./7-2.sh
	echo "Nhấn [Enter] để tiếp tục"
	read key
;;
3)
	./menu.sh
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








   
  
















