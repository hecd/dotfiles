sudo pacman -Syu aspnet-runtime autoconf automake base bison bluez-utils docker dolphin dotnet-sdk fakeroot firefox grub gufw gwenview htop kdeplasma-addons libreoffice-fresh linux-headers logwatch make man-db nano neofetch net-tools netctl nodejs openssh patch pkgconf plasma-desktop plasma-pa reflector sddm sudo syncthing the_silver_searcher tmux traceroute tree unzip usbutils vim vlc yubikey-manager zsh-completions locate inetutils openssh pcsclite ccid pcsc-tools xclip dhclient inotify-tools xdg-user-dirs rclone docker-compose yt-dlp

# sudo systemctl start pcscd.service
# sudo systemctl enable pcscd.service
# For syncthing
# echo "fs.inotify.max_user_watches=204800" | sudo tee -a /etc/sysctl.d/90-override.conf
#This only takes effect after a reboot. To adjust the limit immediately, run:
# echo 204800 | sudo tee /proc/sys/fs/inotify/max_user_watches
# sudo usermod -aG docker $USER 
