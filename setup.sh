# If ~/.emacs.d already exists
if [ -e ~/.emacs.d ]
then
    # Then remove it and it's contents
    rm -rf ~/.emacs.d
fi

# If ~/.emacs already exists
if [ -e ~/.emacs ]
then
    # Then remove it
    # Use -rf just in case it's a directory for some reason...
    rm -rf ~/.emacs
fi

# Symlink the new .emacs.d to the user's home directory
ln -sf $(pwd)/.emacs.d ~/.emacs.d
