;;; helm.el --- Configuration for helm



;;; Commentary:
;; Load and use helm



;;; Code:
(use-package helm
  :ensure t
  :defer t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-buffers-list)))



;;; helm.el ends here
