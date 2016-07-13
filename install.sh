#!/bin/sh
CUSTOM_PLUGINS_DIR=$ZSH_CUSTOM/plugins
FUNNY_QUOTES_PLUGIN_DIR=$CUSTOM_PLUGINS_DIR/funnyquotes
FORTUNES_DIR=$FUNNY_QUOTES_PLUGIN_DIR/fortunes

rm -rfv $FUNNY_QUOTES_PLUGIN_DIR 
mkdir $FUNNY_QUOTES_PLUGIN_DIR
mkdir $FORTUNES_DIR 
cp -v fortunes/funnyquotes $FORTUNES_DIR 
cp -v funnyquotes.plugin.zsh $FUNNY_QUOTES_PLUGIN_DIR
source ~/.zshrc
