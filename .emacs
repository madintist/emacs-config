;;; .emacs --- Emacs config file



;;; Commentary:
;; Custom Emacs config by Joshua Kleveter
;; custom-set-variables and custom-set-faces
;; configuration and such from the
;; original .emacs file that came with Emacs



;;; Code:
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
    (js-doc json-mode helm-swoop git-gutter-fringe auto-package-update auto-complete php-mode web-mode ag projectile flycheck exec-path-from-shell tern-auto-complete tern js2-mode markdown-mode magit helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; Load package systems into Emacs

; Require package.el
(require 'package)

; Declare the package-list so we can use it
(defvar package-list)

; List of packages to install by default
(setq package-list '(ag
		     auto-complete
		     auto-package-update
		     evil
		     exec-path-from-shell
		     flycheck
                     git-gutter-fringe
		     helm
                     helm-swoop
		     magit
		     projectile
		     tern
		     tern-auto-complete
                     js-doc
		     js2-mode
                     json-mode
		     markdown-mode
		     php-mode
		     web-mode))

; Load ELPA packages into Emacs
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

; Load MELPA package system into Emacs
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; Load Marmalade packages into Emacs
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; Activate packages
(package-initialize)

; Fetch the available packages
(unless package-archive-contents
  (package-refresh-contents))

; Install any packages that aren't yet installed
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; Automatically update packages
(auto-package-update-maybe)

; Load PATH correctly for Mac
(when (memq 'window-system '(mac ns x))
  (exec-path-from-shell-initialize))



;;; Custom settings

; Turn off the startup screen
(setq inhibit-startup-screen t)

; Add local bin to PATH
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

; Add local bin to exec-path
(setq exec-path (append exec-path '("/usr/local/bin")))

; Always indent with spaces. No tabs
(setq-default indent-tabs-mode nil)



;;; Custom Keybindings

; Set fullscreen custom keybindings
(global-set-key (kbd "C-x T F") 'toggle-frame-fullscreen)



;;; Configure packages


;; Auto-complete

; Turn on auto-complete mode
(ac-config-default)


;; Electric pair mode

; Turn on by default
(electric-pair-mode t)


;; Evil mode

; Load evil mode
(require 'evil)

; Enable evil-mode by default
(evil-mode 1)


;; Flycheck

; Load Flycheck
(require 'flycheck)

; Enable Flycheck globally
(global-flycheck-mode t)

; Use StandardJS in js2-mode
(flycheck-add-mode 'javascript-standard 'js2-mode)


;; Git Gutter

; Load Git Gutter
(require 'git-gutter-fringe)

; Keep Git Gutter mode on by default
(global-git-gutter-mode t)

; Use fringe on the right side
(setq git-gutter-fr:side 'right-fringe)


;; Helm

; Load helm
(require 'helm-config)

; Use Helm as primary command center
(global-set-key (kbd "M-x") 'helm-M-x)

; Use Helm as file locator
(global-set-key (kbd "C-x C-f") 'helm-find-files)

; Use Helm to show buffer list
(global-set-key (kbd "C-x b") 'helm-buffers-list)


;; Helm Swoop

; Set keybinding for helm-swoop command
(global-set-key (kbd "C-x c h s") 'helm-swoop)

; Set keybinding for helm-multi-swoop command
(global-set-key (kbd "C-x c h m") 'helm-multi-swoop)


;; JS2 Mode

; Load js2-mode
(require 'js2-mode)

; Make js2-mode the default for *.js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

; Make js2-jsx-mode the default for *.jsx files
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))

; Make js2-mode the default for node shells
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

; Turn off parse error linting in js2-mode. Using Flycheck
(setq js2-mode-show-parse-errors nil)

; Turn off strict warnings in js2-mode. Using Flycheck
(setq js2-mode-show-strict-warnings nil)

; Indent to 2 spaces in JS files (for StandardJS)
(setq js-indent-level 2)
(setq js2-basic-offset 2)


;; JS Doc

; Load js-doc
(require 'js-doc)

(add-hook 'js2-mode-hook
          #'(lambda ()
              (define-key js2-mode-map "\C-ci" 'js-doc-insert-function-doc)
              (define-key js2-mode-map "@" 'js-doc-insert-tag)))


;; JSON Mode

; Load JSON reformat (because we're setting the indent value)
(require 'json-reformat)

; Set default indent to 2 spaces
(setq json-reformat:indent-width 2)


;; Linum (line numbers)

; Enable linum-mode by default
(global-linum-mode t)


;; Magit

; Set binding for magit-status command
(global-set-key (kbd "C-x g") 'magit-status)

; Set binding for magit popup
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;; PHP Mode

; Use php-mode for *.php files
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

; Use php-mode for *.inc files
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


;; Projectile

; Always enable Projectile
(projectile-mode t)


;; Tern

; Add Tern to load path
(add-to-list 'load-path "~/tern/emacs/")

; Load tern-mode
(autoload 'tern-mode "tern.el" nil t)

; Hook tern-mode into js2-mode
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

; Use tern with auto-complete
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))


;; Web Mode

; Load web-mode
(require 'web-mode)

; *.phtml
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))

; *.tpl.php
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))

; *.aspx / *.asp
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))

; *.erb
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

; *.mustache
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))

; *.djhtml
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

; *.html
(add-to-list 'auto-mode-alist '("\\.html?'" . web-mode))

; *.css
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

; Indent HTML to 2 spaces
(setq web-mode-markup-indent-offset 2)

; Indent CSS to 2 spaces
(setq web-mode-css-indent-offset 2)

; Indent code to 2 spaces
(setq web-mode-code-indent-offset 2)



;;; .emacs ends here
