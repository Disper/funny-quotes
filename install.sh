#!/bin/sh
CUSTOM_PLUGINS_DIR=$HOME/.oh-my-zsh/custom/plugins
FUNNY_QUOTES_PLUGIN_DIR=$CUSTOM_PLUGINS_DIR/funnyquotes
FORTUNES_DIR=$FUNNY_QUOTES_PLUGIN_DIR/fortunes

if [ `uname` = "Darwin" ]; then
  brew install cowsay
  brew install fortune
fi

if [ `uname` = "Linux" ]; then
  sudo apt-get install cowsay
  sudo apt-get install fortune
fi

rm -rfv $FUNNY_QUOTES_PLUGIN_DIR 
mkdir $FUNNY_QUOTES_PLUGIN_DIR
mkdir $FORTUNES_DIR 
cp -v fortunes/funnyquotes $FORTUNES_DIR 
cp -v funnyquotes.plugin.zsh $FUNNY_QUOTES_PLUGIN_DIR

echo "installation almost completed"
echo "now add 'funnyquotes' plugin to plugins list in your .zshrc file and restart terminal"
