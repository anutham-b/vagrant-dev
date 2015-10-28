#install nvm nodejs
if su -l vagrant -c "nvm >/dev/null"; then
    echo "skipping nodejs installation"
else
	echo "nodejs installation"
    su -l vagrant -c "curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash"
   	echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
	su -l vagrant -c "source /home/vagrant/.profile"
	su -l vagrant -c "nvm install stable"
	su -l vagrant -c "nvm alias default stable"
	su -l vagrant -c "nvm use stable"
fi