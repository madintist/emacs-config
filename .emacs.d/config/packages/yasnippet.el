;;; yasnippet.el --- Configuration for YASnippet



;;; Commentary:
;; Load and use YASnippet



;;; Code:
(use-package yasnippet
  :ensure t
  :bind
  (:map yas-minor-mode-map
        ("TAB" . yas-maybe-expand)
        ("C-c x" . yas-expand))
  :config
  (yas-global-mode t))



;;; yasnippet.el ends here
