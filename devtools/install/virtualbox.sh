sudo apt-get install -y virtualbox

# Create and set storage directory for virtual box machine.
mkdir -p $VIRTUALBOX_HOME
vboxmanage setproperty machinefolder $VIRTUALBOX_HOME

echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list > /dev/null
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install -y virtualbox-5.1 dkms
