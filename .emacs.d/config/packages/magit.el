;;; magit.el --- Configuration for magit-mode



;;; Commentary:
;; Turn on magit-mode
;; - Set keybindings



;;; Code:
(use-package magit
  :ensure t
  :defer t
  :bind
  (("C-x g" . magit-status)
   ("C-x M-g" . magit-dispatch-popup)))



;;; magit.el ends here
