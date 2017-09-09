;;; eshell-z.el --- Congfiguration for eshell-z



;;; Commentary:
;; Load Z into Eshell and jump around.



;;; Code:
(use-package eshell-z
  :ensure t
  :config
  (eval-after-load 'eshell
    '(require 'eshell-z nil t)))



;;; eshell-z.el ends here
