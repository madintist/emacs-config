;;; flycheck.el --- Configuration for flycheck-mode



;;; Commentary:
;; - Install flycheck-mode with use-package.
;; - Use javascript-standard as the linter in js2-mode by default



;;; Code:
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode t))
  (flycheck-add-mode 'javascript-standard 'js2-mode)

;;; flycheck.el ends here
