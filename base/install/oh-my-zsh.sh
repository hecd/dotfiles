# For idempotency.
rm -rf ~/.oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
sudo chsh -s /bin/zsh $USER
