;;; init.el - Load my Emacs configuration



;;; Code:

; Load the `load-directory` function
(load "~/.emacs.d/load-directory")

; Load the packages system (we need this before config)
(load "~/.emacs.d/load-packages")

; Load the config directory
(load-directory "~/.emacs.d/config")
