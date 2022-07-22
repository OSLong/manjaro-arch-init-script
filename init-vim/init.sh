echo "=================== Init Vim ==========="

sudo pacman -S vim

if [ -f "$HOME/.vimrc" ]; then
	mv $HOME/.vimrc $HOME/.backup.vim.rc
fi 

CWD=$(dirname $0)

cp $CWD/default-vim $HOME/.vimrc
