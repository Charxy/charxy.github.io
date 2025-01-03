npx hexo clean # 清除缓存
npx hexo g
npx hexo d # 重新部署 Hexo

# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
info=$1
if ["$info" = ""];
then info=":pencil: update content"
fi

git add -A
git commit -m "$info"
git push origin hexo # 备份 Hexo 源文件