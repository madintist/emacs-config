;;; eshell.el --- Configuration for Eshell



;;; Commentary:
;; Load and configure Eshell with smart mode



;;; Code:
(use-package em-smart
  :ensure t
  :init
  (setq eshell-where-to-jump 'begin)
  (setq eshell-review-quick-commands nil)
  (setq eshell-smart-space-goes-to-end t))


;;; eshell.el ends here
