################
#### BASICS ####
################
# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
brew doctor
# git
brew install git
git config --global user.name "Tristan Vandevelde"
git config --global user.email "tristan@tristanvandevelde.io"
# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# CLI tools
brew install nvim
brew install tmux
brew install tree


################
#### SYSTEM ####
################
# enable repeating keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# setup screenshot path
mkdir -p /Users/tristanvandevelde/Pictures
defaults write com.apple.screencapture location /Users/tristanvandevelde/Pictures/screenshots && killall SystemUIServer
# utilities
brew cask install flux
brew cask install amethyst
brew cask install hammerspoon

##################
#### SOFTWARE ####
##################
brew cask install google-chrome
brew install tor
brew cask install tor-browser
brew cask install spotify
brew cask install microsoft-word
brew cask install microsoft-teams
brew cask install microsoft-excel
brew cask install onedrive
brew cask install transmission
brew cask install vlc
brew cask install obs
brew cask install obs-virtualcam
brew cask install calibre
brew cask install skype
brew cask install virtualbox
brew cask install dropbox
brew cask install iterm2
brew install jupyterlab
brew cask install docker


## TOSORT

# Install and setup Python and Conda
brew install python
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
exec $SHELL
pyenv install --list
# install desired version by: pyenv install version
# set to global for global version by: pyenv global version
# then rehash: pyenv rehash
# install pip
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py

# Anaconda
brew cask install miniconda
conda init "$(basename "${SHELL}")"
conda install -c conda-forge notebook
