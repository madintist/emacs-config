;;; prettier.el --- Configuration for Prettier-js



;;; Commentary:
;; We're actually using prettier-standard here to
;; make sure that we're compatible with StandardJS



;;; Code:
(use-package prettier-js
  :ensure t
  :init
  (setq prettier-js-command "prettier-standard")
  (add-hook 'js2-mode-hook 'prettier-js-mode))



;;; prettier.el ends here
