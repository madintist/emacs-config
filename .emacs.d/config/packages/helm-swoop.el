;;; helm-swoop.el --- Configuration for helm-swoop



;;; Commentary:
;; Load helm-swoop for in-file searching



;;; Code:
(use-package helm-swoop
  :ensure t
  :bind
  (("C-x c h s" . helm-swoop)
   ("C-x c h m" . helm-multi-swoop)))



;;; helm-swoop.el ends here
