npx hexo clean && npx hexo g && npx hexo d # 清除缓存、重新部署 Hexo

# 获取当前日期和时间，并格式化为 YYYYMMDDHHMMSS
datetime=$(date +"%Y%m%d%H%M%S")
 
# 如果没有提供消息后缀，默认提交信息为 ":pencil: update content"
info=$1
if [ "$info" = "" ]; then
    info=":pencil: update content"
fi
 
# 在 info 后面拼接时间戳信息
info_with_timestamp="${info} - $datetime"
 
# 备份 Hexo 源文件
git add -A
git commit -m "$info_with_timestamp"
git push origin hexo
	
# 打包源代码，备份到本地
./update-zip-timestamp.bat