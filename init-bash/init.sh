
echo "============= Init BASH ================"

CWD=$(dirname $0)

if [ ! -f $HOME/.bash_aliases ]; then
	cp $CWD/.bash_aliases $HOME/.bash_aliases
fi

if [ -f $HOME/.bashrc ]; then
	echo "[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases" >> $HOME/.bashrc
fi


if [ -f $HOME/.zshrc ]; then
        echo "[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases" >> $HOME/.zshrc
fi
