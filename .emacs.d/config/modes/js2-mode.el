;;; js2-mode.el --- Configuration for js2-mode



;;; Commentary:
;; Load and set up js2-mode
;; - Use js2-mode for *.js and *.jsx files
;; - Use js2-mode for node shells
;; - Turn off errors and warnings as we're using Flycheck for those
;; - Set indentation to 2 spaces (including switch statements)



;;; Code:
(use-package js2-mode
  :ensure t
  :mode
  (("\\.js\\'" . js2-mode)
   ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter
  ("node" . js2-mode)
  :init
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)
  (setq js-indent-level 2)
  (setq js2-basic-offset 2)
  (setq js-switch-indent-offset 2))



;;; js2-mode.el ends here
