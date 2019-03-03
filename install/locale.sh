# Generate required locale before installing packages.
sudo sed -i s/"# sv_SE.UTF-8 UTF-8"/"sv_SE.UTF-8 UTF-8"/ /etc/locale.gen
sudo locale-gen sv_SE.UTF-8
