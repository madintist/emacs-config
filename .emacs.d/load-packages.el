;;; load-packages.el --- Load package system(s) into Emacs



;;; Commentary:
;; This file will load the necessary package archives
;; (GNU, MELPA, Marmalade, ...) into Emacs.
;; It also checks that all of our packages are installed
;; and updates them as necessary.



;;; Code:

; Load the package system into Emacs
(require 'package)

; Initialize the package-list variable
(defvar package-list)

; Add GNU packages to Emacs
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu/org/packages/"))

; Add MELPA packages to Emacs
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; Add Marmalade packages to Emacs
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; Activate packages
(package-initialize)
