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

# Install zip
sudo apt-get install -y zip

# This will set up a environment for a raspberry pi
mv dotfiles/.bash_aliases ~/.bash_aliases

# Vim

# This is for when commands like 'syntax enable' arnn't working because the vim :version says 'Small version without GUI'
sudo apt-get install -y vim-gui-common
sudo apt-get install -y vim-runtime

# Install Pathogen to make using plugins for Vim easier https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mv dotfiles/.vimrc ~/.vimrc

#  Reload .bashrc
source ~/.bashrc