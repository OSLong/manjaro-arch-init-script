echo ''
echo 'Init Terminal , Use Terminator'
echo ''


pacman -S terminator --noconfirm

CONFIG="$HOME/.config/terminator"

if [ ! -d $CONFIG ]; then
	mkdir -p $CONFIG
fi

if [ -f $CONFIG/config ]; then
	mv  $CONFIG/config $CONFIG/config.backup
fi

CWD=$(dirname $0)


echo "===================== Copy Default Config =========="
cp $CWD/default-config $CONFIG/config
