;;; flycheck.el --- Configuration for flycheck-mode



;;; Code:
(use-package flycheck
  :ensure t
  :defer t
  :init
  (flycheck-add-mode 'javascript-standard 'js2-mode)
  :config
  (global-flycheck-mode t))
