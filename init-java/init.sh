echo "============ Init Java =============="

sudo pacman -S unzip zip --noconfirm

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 
