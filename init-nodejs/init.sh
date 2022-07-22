echo "============== Init Node JS ================="

export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

CWD=$(dirname $0)

if [ -f "$HOME/.bashrc" ]; then 
	cat $CWD/source_profile >> $HOME/.bashrc
fi

if [ -f "$HOME/.zshrc" ]; then
	cat $CWD/source_profile >> $HOME/.zshrc
fi

nvm install node

nvm use node
