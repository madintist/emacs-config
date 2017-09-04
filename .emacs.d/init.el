;;; init.el - Load my Emacs configuration



;;; Code:


;; Load package archives

; Load the package system into Emacs
(require 'package)

; Turn off startup packages. Using use-package for this.
(setq package-enable-at-startup nil)

; Load GNU archives
(add-to-list 'package-archives '("gnu". "http://elpa.gnu.org/packages/"))

; Load MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; Load Marmalade
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; Activate packages
(package-initialize)


;; Load configuration

; Load the `load-directory` function
(load "~/.emacs.d/load-directory")

; Load the config directory
(load-directory "~/.emacs.d/config")
