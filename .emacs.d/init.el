;;; init.el --- Load my Emacs configuration



;;; Commentary:
;; This file does the initial setup to get Emacs working right.
;; We add the package archives,
;; make sure that use-package is installed,
;; check that the PATH is loaded correctly,
;; and load all of the config files.



;;; Code:


;; Load package archives
(require 'package) ; Load the package system into Emacs
(setq package-enable-at-startup nil) ; Turn off startup packages. Using use-package for this.
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/") ; GNU Elpa packages
        ("melpa stable" . "http://stable.melpa.org/packages/") ; Stable MELPA packages
        ("melpa" . "http://melpa.org/packages/") ; Marmalade
        ("marmalade" . "http://marmalade-repo.org/packages/"))) ; Unstable MELPA packages
(setq package-archive-priorities
      '(("melpa stable" . 20)
        ("gnu" . 15)
        ("marmalade" . 10)
        ("melpa" . 5)))
(package-initialize) ; Activate packages


;; Install use-package if it's not installed yet
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load use-package
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)


;; Load PATH
(use-package exec-path-from-shell
  :ensure t
  :if
  (memq window-system '(mac ns x))
  :config
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "EMACS_ENV"))


;; Load configuration
(load "~/.emacs.d/load-directory") ; Load the `load-directory` function
(load-directory "~/.emacs.d/config") ; Load the config directory


;; Code that's automatically added by Custom. Leave it alone.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; init.el ends here
