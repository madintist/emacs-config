;;; helm-ag.el --- Configuration for helm-ag



;;; Commentary:
;; Set up helm-ag searching
;; - Use pt (The Platinum Searcher) rather than ag.
;; - Set a keybinding



;;; Code:
(use-package helm-ag
  :ensure t
  :init
  (setq helm-ag-fuzzy-match t)
  :bind
  ("C-c p s h" . helm-ag))



;;; helm-ag.el ends here
