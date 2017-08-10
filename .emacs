;;; Load package systems into Emacs
(require 'package)

;; Load ELPA packages into Emacs
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Load MELPA package system into Emacs
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Initialize packages
(package-initialize)
