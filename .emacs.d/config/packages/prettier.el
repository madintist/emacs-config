;;; prettier.el --- Configuration for Prettier-js



;;; Commentary:
;; We're actually using prettier-standard here to
;; make sure that we're compatible with StandardJS



;;; Code:
(use-package prettier-js
  :ensure t
  :defer t
  :init
  (if (string= (getenv "EMACS_ENV") "personal")
      (setq prettier-js-command "prettier")
    (setq prettier-js-command "prettier-standard"))
  (add-hook 'js2-mode-hook 'prettier-js-mode))



;;; prettier.el ends here
