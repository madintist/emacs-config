;;; init.el - Load my Emacs configuration



;;; Commentary:
;; This file does the initial setup to get Emacs working right.
;; We add the package archives,
;; make sure that use-package is installed,
;; check that the PATH is loaded correctly,
;; and load all of the config files.



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

; Install use-package if it's not installed yet
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; Load use-package
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)


;; Load PATH
(use-package exec-path-from-shell
             :if (memq window-system '(mac ns x))
             :ensure t
             :config
             (exec-path-from-shell-initialize))


;; Load configuration

; Load the `load-directory` function
(load "~/.emacs.d/load-directory")

; Load the config directory
(load-directory "~/.emacs.d/config")


;; Code that's automatically added by Custom. Leave it alone.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
