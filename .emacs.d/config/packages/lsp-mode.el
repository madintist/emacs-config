;;; lsp-mode.el --- Use Microsoft's LSP in Emacs!



;;; Commentary:
;; Load in LSP mode



;;; Code:
(use-package lsp-mode
  :ensure t
  :defer t
  :init
  (require 'lsp-flycheck))


;;; lsp-mode.el ends here
