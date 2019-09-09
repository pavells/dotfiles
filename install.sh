#!/bin/bash

# i3
# i3ststus
# vim
# tmux
# ranger
# rofi
# moc
# screenlayout
# alacritty
# urxvt
    
#Setup script for Dotfiles
  
arg=$1

  echo -e "\u001b[32;1mSetting up Dotfiles...\u001b[0m"

   if [[ "$arg" == "-i" || "$arg" == "--install" ]]; then

    echo -e "  \u001b[34;1m 1) for Vim-Plug \u001b[0m"
    echo -e "  \u001b[31;1m 0) to Exit \u001b[0m"

    read option

    case $option in


    "1")echo -e "\u001b[7m Installing Vim-Plug... \u001b[0m"
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim +PlugInstall
        ;;

    "0")echo -e "\u001b[4m\u001b[44m Bye \u001b[0m"
        exit 0
        ;;

    *)echo -e "\u001b[31;1m Invalid option entered. \u001b[0m"
        exit 1
        ;;
    esac

    exit 0
  fi

echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
mv -iv ~/.Xresources ~/.Xresources.old
mv -iv ~/.config/i3/config ~/.config/i3/config.old
mv -iv ~/.config/i3status/config ~/.config/i3status/config.old
mv -iv ~/.config/i3-scrot.conf ~/.config/i3-scrot.conf.old
mv -iv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.old
mv -iv ~/.tmux/tmux.conf ~/.tmux/tmux.conf.old
mv -iv ~/.vim/.vimrc ~/.vim/.vimrc.old
mv -iv ~/.config/rofi/config ~/.config/rofi/config.old
mv -iv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml.old
mv -iv ~/.config/htop/htoprc ~/.config/htop/htoprc.old
mv -iv ~/.config/urxvt ~/.config/urxvt.old
mv -iv ~/.moc/config ~/.moc/config.old
mv -iv ~/.screenlayout ~/.screenlayout.old
mv -iv ~/.xprofile ~/.xprofile.old
mv -iv ~/.xinitrc ~/.xinitrc.old
mv -iv ~/.gitconfig ~/.gitconfig.old

echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
ln -sfnv $PWD/.Xresources ~/.Xresources
ln -sfnv $PWD/.config/i3/config ~/.config/i3/config
ln -sfnv $PWD/.config/i3status/config ~/.config/i3status/config
ln -sfnv $PWD/.config/i3-scrot.conf ~/.config/i3-scrot.conf
ln -sfnv $PWD/.config/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sfnv $PWD/.tmux/tmux.conf ~/.tmux/tmux.conf
ln -sfnv $PWD/.vim/.vimrc ~/.vimrc
ln -sfnv $PWD/.config/rofi/config.rasi ~/.config/rofi/config
ln -sfnv $PWD/.config/rofi/oxide.rasi ~/.config/rofi/oxide.rasi
ln -sfnv $PWD/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sfnv $PWD/.config/htop/htoprc ~/.config/htop/htoprc
ln -sfnv $PWD/.config/urxvt ~/.config/urxvt
ln -sfnv $PWD/.moc/config ~/.moc/config
ln -sfnv $PWD/.screenlayout ~/.screenlayout
ln -sfnv $PWD/.xprofile ~/.xprofile
ln -sfnv $PWD/.xinitrc ~/.xinitrc
ln -sfnv $PWD/.gitconfig ~.gitconfig.old

echo -e "\u001b[36;1m Remove backups with 'rm -ir ~/.*.old && rm -ir ~/.config/
*.old'. \u001b[0m"
echo -e "\u001b[32;1m Completed. \u001b[0m"

