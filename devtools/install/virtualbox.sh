sudo apt-get install -y virtualbox

# Create and set storage directory for virtual box machine.
mkdir -p $VIRTUALBOX_HOME
vboxmanage setproperty machinefolder $VIRTUALBOX_HOME
