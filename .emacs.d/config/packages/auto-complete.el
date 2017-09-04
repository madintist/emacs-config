;;; auto-complete.el --- Configuration for auto-complete-mode



;;; Code:
(use-package auto-complete
             :ensure t
             :init
             (setq ac-use-quick-help t)
             (setq ac-quick-help-delay nil)
             :config
             (ac-config-default))
