;;; lsp-ui.el --- Use Microsoft's LSP in Emacs!



;;; Commentary:
;; UI components for lsp-mode



;;; Code:
(use-package lsp-ui
  :ensure t
  :bind
  (([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
   ([remap xref-find-references] . lsp-ui-peek-find-references))
  :init
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))


;;; lsp-ui.el ends here
