rm vsix_list.txt
touch vsix_list.txt
vsix_list=$(ls -d *.vsix 2>/dev/null)
for i in ${vsix_list}; do
  echo "https://github.com/radiant-rstats/docker-vsix/raw/master/${i}" >> ../docker-vsix/vsix_list.txt
done

git add .
git commit -m "revert (mostly)"
# git commit -m "update"
git push
