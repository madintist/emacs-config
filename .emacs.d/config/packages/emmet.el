;;; emmet.el --- Configuration for emmet-mode



;;; Code:
(use-package emmet-mode
  :ensure t
  :defer t
  :init
  (add-hook 'web-mode-hook 'emmet-mode))
