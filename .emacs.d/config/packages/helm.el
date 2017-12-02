;;; helm.el --- Configuration for helm



;;; Commentary:
;; Load and use helm



;;; Code:
(use-package helm
  :ensure t
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files)
   ("C-x b" . helm-buffers-list))
  :init
  (add-hook 'helm-major-mode-hook
            (lambda ()
              (setq auto-composition-mode nil))))



;;; helm.el ends here
