# Viết 1 chương trình trong Shell sao cho với tham số thứ nhất là tên file 
#text và nó sẽ in ra màn hình nội dung file này, nhưng với tất cả ký tự đều viết
#hoa
echo -e "nhap ten file:"
read tenfile
#-f: ktra file
if [ ! -f "$tenfile" ]; then
#neu file khong ton tai
echo "$tenfile not exits"
exit 1
fi
echo "File sau khi chuyen doi la:"
#chuyen thuong thanh hoa het
tr '[a-z]' '[A-Z]'<$tenfile
exit 0