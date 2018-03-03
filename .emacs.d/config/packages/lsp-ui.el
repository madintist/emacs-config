;;; lsp-ui.el --- Use Microsoft's LSP in Emacs!



;;; Commentary:
;; UI components for lsp-mode



;;; Code:
(use-package lsp-ui
  :init
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))


;;; lsp-ui.el ends here
