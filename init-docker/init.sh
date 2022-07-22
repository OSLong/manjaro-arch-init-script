echo "============== Init Docker =============="

sudo pacman -S docker docker-compose --noconfirm --noscriptlet

sudo usermod -aG docker $USER

DAEMON_PATH='/etc/docker/daemon.json'
USER_ID=$(id -u $USER)
GROUP_ID=$(id -g $USER)

if [ -f "/etc/docker/daemon.json" ]; then
	sudo mv $DAEMON_PATH $DAEMON_PATH.backup
fi


echo "$USER:$USER_ID:65536" >> sudo tee -a /etc/subuid

echo "$USER:$GROUP_ID:65536" >> sudo tee -a /etc/subgid

echo "{
  \"userns-remap\": \"$USER\"
}" >> sudo tee -a  $DAEMON_PATH 
