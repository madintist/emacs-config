;;; tern.el --- Configuration for tern



;;; Commentary:



;;; Code:
(use-package tern
  :ensure t
  :load-path "~/.emacs.d/lib/tern/emacs/"
  :init
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  (autoload 'tern-mode "tern.el" nil t)
  :config
  (eval-after-load 'tern
    '(progn
       (use-package tern-auto-complete
         :ensure t
         :config
         (tern-ac-setup)))))



;;; tern.el ends here
