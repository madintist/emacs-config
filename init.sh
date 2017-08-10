if [ -e "~/.emacs" ]
then
    rm ~/.emacs
fi

ln -s ./.emacs ~/.emacs
