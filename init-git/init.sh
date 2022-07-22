echo "==================== Init Git =============="

read -p "Git Username : " GIT_NAME

read -p "Git Email : " GIT EMAIL

git config --global user.name "$GIT_NAME"

git config --global user.email "$GIT_EMAIL"

echo "===== Store Credential User"
git config --global credential.helper store


