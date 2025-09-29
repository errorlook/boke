@echo off
cd /d %~dp0

echo 当前目录: %cd%

echo 清理旧文件...
call npx hexo clean

echo 生成新文件到 docs...
call npx hexo g

echo 添加到 git...
git add .

set /p msg=请输入提交信息(默认: update blog): 
if "%msg%"=="" set msg=update blog

git commit -m "%msg%"
git push origin main

echo 部署完成！
pause
