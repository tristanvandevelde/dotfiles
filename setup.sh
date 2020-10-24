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
brew install git-lfs
git lfs install
# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap homebrew/cask-fonts
brew cask install font-fira-code font-source-code-pro


# CLI tools
brew install nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
brew install tmux
brew install tree
brew install neofetch


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
brew cask install calibre
brew cask install skype
brew cask install virtualbox
brew cask install dropbox
brew install jupyterlab
brew cask install docker
brew cask install transmit
brew cask install tower
brew install ghc
brew cask install emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
echo "y"
echo "y"
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
brew cask install clion
brew cask install pycharm

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

# Anaconda -> use docker conda in future
#brew cask install miniconda
#conda init "$(basename "${SHELL}")"
#conda install -c conda-forge notebook
