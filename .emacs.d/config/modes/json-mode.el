;;; json-mode.el --- Configuration for json-mode



;;; Commentary:
;; Load json-mode
;; - Set indent to 2 spaces



;;; Code:
(use-package json-mode
  :ensure t
  :defer t
  :init
  (setq json-reformat:indent-width 2))



;;; json-mode.el ends here
