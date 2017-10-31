;;; php-mode.el --- Configuration for php-mode



;;; Commentary:
;; Load php-mode
;; - Use for *.php and *.inc files



;;; Code:
(use-package php-mode
  :ensure t
  :defer t
  :mode
  (("\\.php$" . php-mode)
   ("\\.inc$" . php-mode)))



;;; php-mode.el ends here
