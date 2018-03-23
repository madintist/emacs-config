;;; robe.el --- Configuration for robe (Ruby code navigator)



;;; Commentary:
;; Load and configure robe
;; Hook to enhanced ruby mode



;;; Code:
(use-package robe
  :ensure t
  :init
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  (add-hook 'robe-mode-hook 'ac-robe-setup))



;;; robe.el ends here
