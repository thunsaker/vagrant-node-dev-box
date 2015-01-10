# configure bashrc
cp /vagrant/files/.bashrc /home/vagrant/.bashrc

sudo apt-get update
sudo apt-get install -y python-software-properties git tmux vim build-essential libssl-dev curl htop

wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh

source /home/vagrant/.nvm/nvm.sh

# Installing Node.JS
echo "Installing Node.JS..."

nvm install stable
nvm use stable
nvm alias default stable

#install yeoman
npm install -g yo grunt-cli bower foreman forever gulp coffee-script uglify-js pm2 sass jslint

#install generator
npm install generator-generator -g
npm install generator-mean -g
npm install generator-express -g

#installs mongo db
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update
sudo apt-get install -yqq mongodb-org
sed -i "s/bind_ip = */bind_ip = 0.0.0.0/" /etc/mongod.conf
sudo apt-get install -y redis-server

# installs heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# configure vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /vagrant/files/.vimrc ~/.vimrc
vim +PluginInstall +qall
