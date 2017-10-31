;;; lsp-javascript.el --- Load JavaScript LSP support



;;; Commentary:
;; Use LSP for JavaScript



;;; Code:
(use-package lsp-javascript-typescript
  :ensure t
  :init
  (add-hook 'js2-mode-hook #'lsp-javascript-typescript-enable)
  (add-hook 'js-mode-hook #'lsp-javascript-typescript-enable)
  (add-hook 'typescript-mode-hook #'lsp-javascript-typescript-enable)
  (add-hook 'rjsx-mode-hook #'lsp-javascript-typescript-enable))


;;; lsp-javascript.el ends here
