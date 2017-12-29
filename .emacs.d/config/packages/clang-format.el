;;; clang-format.el --- Formatting for C languages



;;; Commentary:
;; Add clang-format.el package
;; Configure keybindings for package



;;; Code:
(use-package clang-format
  :ensure t
  :bind (:map c-mode-map
         ("C-c i" . clang-format-region)
         ("C-c u" . clang-format-buffer)))


;;; clang-format.el ends here
