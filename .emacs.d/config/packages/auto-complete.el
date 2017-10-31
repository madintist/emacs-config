;;; auto-complete.el --- Configuration for auto-complete-mode



;;; Commentary:
;; Load auto-complete
;; - Turn on quick help
;; - Set quick help delay to .5 seconds



;;; Code:
(use-package auto-complete
  :ensure t
  :init
  (setq ac-stop-flymake-on-completing t)
  (setq ac-quick-help-delay 0.5)
  (setq ac-use-quick-help t)
  :config
  (ac-config-default))



;;; auto-complete.el ends here
