#Specify Homebrew Cask options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Cask version
brew tap caskroom/versions

# Install packages

apps=(
  dash
  dockertoolbox
  dropbox
  eclipse-ide
  evernote
  firefox
  flux
  java
  jd-gui
  intellij-idea
  iterm2-beta
  slack
  skype
  spotify
  sublime-text3
  virtualbox
  vlc

#  alfred
#  dropbox
#  firefox-nightly
#  glimmerblocker
#  google-chrome
#  google-chrome-canary
#  google-drive
#  hammerspoon
#  kaleidoscope
#  macdown
#  opera
#  screenflow
#  sourcetree
#  spectacle
#  transmit
#  webstorm
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
#brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
#[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon

# Remove outdated cask apps versions
echo
remove_outdated_cask_versions
echo
