# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  bash-completion2
  bats
  coreutils
  dockutil
  git
  leiningen
  maven
  mongodb
  mysql
  peco
  postgres
  python
  rabbitmq
  shellcheck
  tree
  vim
  wget

# Software that I need to study before install
#  battery
#  cmake
#  ffmpeg
#  fasd
#  gifsicle
#  gnu-sed --with-default-names
#  grep --with-default-names
#  hub
#  httpie
#  imagemagick
#  jq
#  mackup
#  psgrep
#  ssh-copy-id
#  svn
#  wifi-password
)

brew install "${apps[@]}"
