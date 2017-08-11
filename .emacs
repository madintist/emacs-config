;;; Variable configuration and such from the
;;; original .emacs file that came with
;;; my original copy of emacs.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; Load package systems into Emacs
(require 'package)
(package-initialize)

; Load ELPA packages into Emacs
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

; Load MELPA package system into Emacs
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; Refresh contents so we can see the packages
(package-refresh-contents)



;;; Configure packages

;; Evil mode
(require 'evil)
(evil-mode 1)
