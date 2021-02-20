git add -A
read -p "Commit message: " MESSAGE
echo $MESSAGE
git commit -m "$MESSAGE"
git push
