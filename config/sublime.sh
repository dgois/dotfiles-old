#!/usr/bin/env bash
# This script creates symlinks from the home directory to the dotfiles contained
echo "path to dotfiles folder - > $DOTFILES_DIR"
# Variables
packagecontrolsettingsfile="Package Control.sublime-package"
sublimesettingsfolder='/Users/dgois/Library/Application Support/Sublime Text 3'

# Making symlink of sublime configuration files
echo "Copy files from dotfiles sublime config folder to Sublime package user folder"
for file in $DOTFILES_DIR/config/sublime/*; do ln -sfv "$file" "$sublimesettingsfolder/Packages/User"; done 
echo "... done"

echo "Install Package Control package"
# Install package_control package
if [ -f "$sublimesettingsfolder/Installed Packages/Package Control.sublime-package" ]
then
   echo  "$sublimesettingsfolder/Installed Packages/Package Control.sublime-package found"
else
   echo "File Not found and It will be install"
   curl http://sublime.wbond.net/Package%20Control.sublime-package -o "$packagecontrolsettingsfile" 
   mv "$packagecontrolsettingsfile" "$sublimesettingsfolder/Installed Packages/"
fi
echo "... done"
