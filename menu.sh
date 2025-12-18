str=""
while true
do
echo "Menu"
echo "1. nhap"
echo "2. Dem so ki tu"
echo "3. Dem so tu"
echo "4. Thoat"
echo " Moi ban nhap lua chon (tu 1 den 4 nha):"
read chon


case $chon in
1) 
echo -n " nhap chuoi: "
read str
;;
2)
echo "So ki tu: $(echo -n "$str" | wc -c)"
;;
3)
echo "So tu: $(echo "$str" | wc -w)"
;;
4)
echo "Tam biet"
exit 0
;;
*)
echo "Lua chon khong hop le"
;;
esac
done