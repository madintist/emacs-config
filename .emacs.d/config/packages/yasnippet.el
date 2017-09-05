;;; yasnippet.el --- Configuration for YASnippet



;;; Commentary:
;; Load and use YASnippet



;;; Code:
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t)
  (define-key yas-minor-mode-map (kbd "TAB") yas-maybe-expand)
  (define-key yas-minor-mode-map (kbd "C-c x") #'yas-expand))



;;; yasnippet.el ends here
