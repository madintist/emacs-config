;;; eshell.el --- Configuration for Eshell



;;; Commentary:
;; Load and configure Eshell with smart mode



;;; Code:

;; Load Eshell and Smart mode
(require 'eshell)
(require 'em-smart)

;; Settings
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)



;;; eshell.el ends here
