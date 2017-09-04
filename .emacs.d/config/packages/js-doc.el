;;; js-doc.el --- Configuration for js-doc



;;; Commentary:
;; Load js-doc
;; - Hook into js2-mode



;;; Code:
(use-package js-doc
  :ensure t
  :init
  (add-hook 'js2-mode-hook 'js-doc)
  :bind
  (:map js2-mode-map
        ("\C-ci" . js-doc-insert-function-doc)
        ("@" . js-doc-insert-tag)))



;;; js-doc.el ends here
