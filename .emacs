;;; Load package systems into Emacs
(require 'package)
(package-initialize)

;; Load ELPA packages into Emacs
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

;; Load MELPA package system into Emacs
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Refresh contents so we can see the packages
(package-refresh-contents)
