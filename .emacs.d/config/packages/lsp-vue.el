;;; lsp-vue.el --- Add LSP support in vue-mode



;;; Commentary:
;; Load LSP in vue-mode



;;; Code:
(use-package lsp-vue
  :ensure t
  :init
  (add-hook 'vue-mode-hook #'lsp-vue-mmm-enable))

;;; lsp-vue.el ends here
