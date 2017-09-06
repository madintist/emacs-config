;;; auto-package-update.el --- Configuration for auto-package-update



;;; Commentary:



;;; Code:
(use-package auto-package-update
  :ensure t
  :init
  (setq auto-package-update-interval 1)
  (setq auto-package-update-prompt-before-update t)
  (setq auto-package-update-delete-old-versions t)
  :config
  (auto-package-update-maybe))



;;; auto-package-update.el ends here
