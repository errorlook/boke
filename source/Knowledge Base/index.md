# 修改images图片的后缀

## Linux / macOS（终端执行）

在你的项目根目录执行：
cd source/images

#### 把所有需要修改开头的图片统一重命名为 xx.jpg
a=1
for file in fulilian*; do
  ext="${file##*.}"          # 获取扩展名
  newname="fulilian${a}.jpg" # 新名字（统一成 .jpg）
  echo "重命名: $file -> $newname"
  mv "$file" "$newname"
  a=$((a+1))
done

## Windows PowerShell（终端执行）
cd source/images

$a = 1
Get-ChildItem -Filter "fulilian*" | ForEach-Object {
    $newname = "fulilian$a.jpg"
    Rename-Item $_.FullName $newname
    Write-Output "重命名: $($_.Name) -> $newname"
    $a++
}
  


