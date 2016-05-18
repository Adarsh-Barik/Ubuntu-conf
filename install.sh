#!/usr/bin/env bash

# based on https://github.com/ranjanashish/debian-configuration-files

declare -r GH_DEB_CONFIGS=https://github.com/Adarsh-Barik/Ubuntu-conf.git
declare -r GH_POWERLINE_FONTS=https://github.com/powerline/fonts.git
declare -r GH_OH_MY_ZSH=https://github.com/robbyrussell/oh-my-zsh.git
declare -r GH_VUNDLE=https://github.com/VundleVim/Vundle.vim.git

# install basic packages from debian repositories
sudo apt-get install autojump curl gcc g++ git python-pip vim zsh

# download config files and create hardlinks
printf 'Downloading debian config files... \n'
mkdir -p ~/git
git clone ${GH_DEB_CONFIGS} ~/git/debian-configuration-files >/dev/null 2>&1 && {
    printf 'Success!\n'
    printf 'Moving config files to appropriate places... '
    ln  ~/git/debian-configuration-files/.vimrc ~/.vimrc
    ln  ~/git/debian-configuration-files/.zshrc ~/.zshrc
    ln  ~/git/debian-configuration-files/.zshenv ~/.zshenv
    printf 'Done!\n'
} || printf 'Failed!\n'

# install powerline fonts
printf '\nInstalling powerline fonts... '
mkdir -p ~/.fonts
git clone ${GH_POWERLINE_FONTS} ~/git/debian-configuration-files/powerline-fonts >/dev/null 2>&1 && {
chmod a+x ~/git/debian-configuration-files/powerline-fonts/install.sh
./install.sh
printf 'Done!\n'
} || printf 'download FAILED!\n'


# install oh-my-zsh
printf '\nInstalling oh-my-zsh... '
git clone ${GH_OH_MY_ZSH} ~/.oh-my-zsh >/dev/null 2>&1 && printf 'Success!\n' || printf 'Failed!\n'

# install vundle and vim plugins
printf '\nInstalling vundle... '
git clone ${GH_VUNDLE} ~/.vim/bundle/Vundle.vim >/dev/null 2>&1 && {
    printf 'Success!\n'
    printf 'Installing vim plugins\n'
    vim +PluginInstall +qall
    printf 'Done!\n'
} || printf 'Failed!\n'

# change default shell to zsh
printf '\nChanging default shell to zsh\n'
chsh -s $(which zsh)
printf 'Done!\n'
