# Generate required locale before installing packages.
sudo sed -i s/"# sv_SE.UTF-8 UTF-8"/"sv_SE.UTF-8 UTF-8"/ /etc/locale.gen
sudo locale-gen

sudo apt-get -y update
sudo apt-get -y install curl python-dev python3-dev vim-gtk git zsh build-essential cmake tmux wget tree
