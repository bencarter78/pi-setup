# Update and upgrade
sudo apt-get update
sudo apt-get upgrade

# Create a new user

# Disable login for pi user

# Enable SSH server
sudo touch /boot/ssh

# This will set up a environment for a raspberry pi
mv .bash_aliases ~/.bash_aliases

# Vim

# This is for when commands like 'syntax enable' arnn't working because the vim :version says 'Small version without GUI'
sudo apt-get install vim-gui-common
sudo apt-get install vim-runtime

# Install Pathogen to make using plugins for Vim easier https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mv .vimrc ~/.vimrc

#  Reload .bashrc
source ~/.bashrc