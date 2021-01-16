#!/bin/bash

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd -

yay -S \
  chatterino2-git \
  nerd-fonts-fira-code
