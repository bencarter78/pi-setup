# Update and upgrade
sudo apt-get update
sudo apt-get upgrade

# Create a new user
# echo "Let's create a new Superuser. Please enter a username e.g.(simon)"
# read username
# sudo adduser $username

# Disable login for pi user

# Enable SSH server
sudo touch /boot/ssh

# Install virtualenv for Python
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

# virtualenv and virtualenvwrapper
sudo printf "# virtualenv and virtualenvwrapper" >> ~/.profile
sudo printf "\nexport WORKON_HOME=\$HOME/.virtualenvs" >> ~/.profile
sudo printf "\nsource /usr/local/bin/virtualenvwrapper.sh"  >> ~/.profile

# Install zip
sudo apt-get install -y zip

# Install wget
sudo apt-get install -y wget

# This will set up a environment for a raspberry pi
mv dotfiles/.bash_aliases ~/.bash_aliases

# Vim

# This is for when commands like 'syntax enable' arnn't working because the vim :version says 'Small version without GUI'
sudo apt-get install -y vim-gui-common
sudo apt-get install -y vim-runtime

# Install Pathogen to make using plugins for Vim easier https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mv dotfiles/.vimrc ~/.vimrc

# Install imutils for the motion detection
pip install imutils


#  Reload .bashrc & the profile
source ~/.bashrc
source ~/.profile