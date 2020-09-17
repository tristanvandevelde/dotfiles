# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
brew doctor
brew update
brew upgrade
brew cleanup





# Terminal
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"



# Install and setup git
brew install git
git --version
which git
git config --global user.name "Tristan Vandevelde"
git config --global user.email "tristan@tristanvandevelde.io"

# Install Neovim
brew install nvim
# config in ~/.config/nvim/init.vim


# Install virtualbox
brew cask install virtualbox

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

# onivim2 not yet available on brew

# System utilities
# enable repeating keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# setup screenshot path
mkdir -p /Users/tristanvandevelde/Pictures
defaults write com.apple.screencapture location /Users/tristanvandevelde/Pictures/screenshots && killall SystemUIServer


# Install desktop utilities
brew cask install flux
brew cask install amethyst
brew cask install hammerspoon


# Office Software
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
brew cask install calibre
brew cask install skype


# Anaconda
brew cask install miniconda
conda init "$(basename "${SHELL}")"
conda install -c conda-forge notebook
