;;; js-doc.el --- Configuration for js-doc



;;; Commentary:
;; Load js-doc
;; - Hook into js2-mode



;;; Code:
(use-package js-doc
  :ensure t
  :init
  (add-hook 'js2-mode-hook
            #'(lambda ()
                (define-key js2-mode-map "\C-ci" 'js-doc-insert-function-doc)
                (define-key js2-mode-map "@" 'js-doc-insert-tag))))



;;; js-doc.el ends here
