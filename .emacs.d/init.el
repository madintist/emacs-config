;;; init.el - Load my Emacs configuration



;;; Code:


;; Load package archives

; Load the package system into Emacs
(require 'package)

; Load GNU archives
(add-to-list 'package-archives '("gnu". "http://elpa.gnu.org/packages/"))

; Load MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; Load Marmalade
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; Activate packages
(package-initialize)

; Load use-package
(load "~/.emacs.d/use-package/use-package")


;; Load configuration

; Load the `load-directory` function
(load "~/.emacs.d/load-directory")

; Load the config directory
(load-directory "~/.emacs.d/config")
