#!/bin/zsh

file='update.patch'
if [ -s "$file" ] 
then
    echo "Removing the existing patch..."
    rm -rf update.patch
    echo "Removed."
fi
echo "Creating a new patch."
colordiff ~/.vimrc .vimrc
diff -u ~/.vimrc .vimrc > update.patch
patch .vimrc < update.patch
rm -rf update.patch
echo "Finished"
