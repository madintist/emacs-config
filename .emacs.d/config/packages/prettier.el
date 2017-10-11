;;; prettier.el --- Configuration for Prettier-js



;;; Commentary:



;;; Code:
(use-package prettier-js
  :ensure t
  :init
  (setq prettier-js-args '("--no-semi" "--single-quote"))
  (add-hook 'js2-mode-hook 'prettier-js-mode))



;;; prettier.el ends here
