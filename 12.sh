#!/bin/bash
read -p "Nhập tên thư mục cần cấp quyền: " n
while [ -z $n ];
do
	echo "❌ Tên thư mục cần cấp quyền chưa nhập!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần cấp quyền: " n
done	
while test ! -e $n;
do
	echo "❌ Tên thư mục cần cấp quyền không tồn tại!"
	echo "❌ Vui lòng nhập tên khác!"
	read -p "Nhập tên thư mục cần cấp quyền: " n
done	
echo ""
echo ""
echo    " —————————————————————————————————————————"
echo    "| Đánh dấu ' + ' vào ô bạn cần cấp quyền |"
echo    " —————————————————————————————————————————"
echo    " —————————————————————————————————"
echo    "|           Owner: u              |"
echo    " —————————————————————————————————"
read -p "| read: r    |" ur
echo    " —————————————————————————————————"
read -p "| write: w   |" uw
echo    " —————————————————————————————————"
read -p "| execute: x |" ux
echo    " —————————————————————————————————"
echo    ""
echo    ""
echo    " —————————————————————————————————"
echo    "|           Group: g              |"
echo    " —————————————————————————————————"
read -p "| read: r    |" gr
echo    " —————————————————————————————————"
read -p "| write: w   |" gw
echo    " —————————————————————————————————"
read -p "| execute: x |" gx
echo    " —————————————————————————————————"
echo    ""
echo    ""
echo    " —————————————————————————————————"
echo    "|           Public: o             |"
echo    " —————————————————————————————————"
read -p "| read: r    |" or
echo    " —————————————————————————————————"
read -p "| write: w   |" ow
echo    " —————————————————————————————————"
read -p "| execute: x |" ox
echo    " —————————————————————————————————"
echo ""
echo ""

case $ur in
+)
	uur=4
;;
*)
	uur=0
;;
esac

case $uw in
+)
	uuw=2
;;
*)
	uuw=0
;;
esac

case $ux in
+)
	uux=1
;;
*)
	uux=0
;;
esac

case $gr in
+)
	ggr=4
;;
*)
	ggr=0
;;
esac

case $gw in
+)
	ggw=2
;;
*)
	ggw=0
;;
esac

case $gx in
+)
	ggx=1
;;
*)
	ggx=0
;;
esac

case $or in
+)
	oor=4
;;
*)
	oor=0
;;
esac

case $ow in
+)
	oow=2
;;
*)
	oow=0
;;
esac

case $ox in
+)
	oox=1
;;
*)
	oox=0
;;
esac

u=$(( $uur+$uuw+$uux ))
g=$(( $ggr+$ggw+$ggx ))
o=$(( $oor+$oow+$oox ))

chmod $u$g$o $n 

echo "✅ Cấp quyền thành công thư mục "$n
echo "Lệnh thực thi chmod $u$g$o $n"
exit 0
