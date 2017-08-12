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
 '(package-selected-packages
   (quote
    (exec-path-from-shell tern-auto-complete ac-js2 auto-complete tern js2-mode markdown-mode magit helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; Load package systems into Emacs

(require 'package)
(package-initialize)
(when (memq 'window-system '(mac ns x))
  (exec-path-from-shell-initialize)) ; Load PATH correctly for Mac
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")) ; Load ELPA packages into Emacs
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")) ; Load MELPA package system into Emacs
(package-refresh-contents) ; Refresh contents so we can see the packages



;;; Custom settings

(setq inhibit-startup-screen t) ; Turn off the startup screen



;;; Custom Keybindings

(global-set-key (kbd "C-x T F") 'toggle-frame-fullscreen) ; Set fullscreen custom keybindings



;;; Configure packages

;; ac-js2
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; Auto-complete
(ac-config-default) ; Turn on auto-complete mode

;; Evil mode
(require 'evil)
(evil-mode 1) ; Enable evil-mode by default

;; Helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x) ; Use Helm as primary command center
(global-set-key (kbd "C-x C-f") 'helm-find-files) ; Use Helm as file locator
(global-set-key (kbd "C-x b") 'helm-buffers-list) ; Use Helm to show buffer list

;; JS2 Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)) ; Make js2-mode the default for *.js files
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode)) ; Make js2-jsx-mode the default for *.jsx files
(add-to-list 'interpreter-mode-alist '("node" . js2-mode)) ; Make js2-mode the default for node shells

;; Linum (line numbers)
(global-linum-mode t) ; Enable linum-mode by default

;; Magit
(global-set-key (kbd "C-x g") 'magit-status) ; Set binding for magit-status command
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup) ; Set binding for magit popup

;; Tern
;; NOTE: This is not working currently
(add-to-list 'load-path "/usr/local/bin/tern/emacs/") ; Add Tern to load path
(autoload 'tern-mode "tern.el" nil t) ; Load tern-mode
(add-hook 'js2-mode-hook (lambda () (tern-mode t))) ; Hook tern-mode into js2-mode
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup))) ; Use tern with auto-complete
