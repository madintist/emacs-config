;;; lsp-javascript.el --- Load JavaScript LSP support



;;; Commentary:
;; Use LSP for JavaScript



;;; Code:
(use-package lsp-javascript-typescript
  :ensure t
  :init
  (add-hook 'js2-mode-hook #'lsp-javascript-typescript-enable))


;;; lsp-javascript.el ends here
