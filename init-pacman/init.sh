echo ""
echo "================ Init Pacman ======================"
echo ""

sudo pacman-mirrors -g

echo "============== Init Parrallel Download ==================="
echo "Backup Default Pacman Conf ready " 

CWD=$(dirname $0)

sudo cp /etc/pacman.conf /etc/pacman.conf.backup
sudo cat $CWD/pacman-parrallel-download.conf >> /etc/pacman.conf

echo "============ Run Upgrade Pacman Syyuu ========"
sudo pacman -Syyuu --noconfirm

