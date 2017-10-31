;;; slime.el --- Configuration for SLIME



;;; Commentary:
;; Load and configure SLIME
;; - Requires that you have SBCL installed



;;; Code:
(use-package slime
  :ensure t
  :defer t
  :init
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq slime-contribs '(slime-fancy)))



;;; slime.el ends here
