;;; git-gutter.el --- Configuration for git-gutter



;;; Commentary:
;; Load git-gutter-mode
;; - Using fringe mode so it works with linum-mode
;; - Git gutter will appear on the right side



;;; Code:
(use-package git-gutter-fringe
  :ensure t
  :init
  (setq git-gutter-fr:side 'right-fringe)
  :config
  (global-git-gutter-mode t))



;;; git-gutter.el ends here
