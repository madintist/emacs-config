;;; markdown-mode.el --- Configuration for markdown-mode



;;; Commentary:



;;; Code:
(use-package markdown-mode
  :ensure t
  :defer t
  :commands
  (markdown-mode gfm-mode)
  :mode
  (("README\\.md\\'" . gfm-mode)
   ("\\.md\\'" . markdown-mode)
   ("\\.markdown\\'" . markdown-mode))
  :init
  (setq markdown-command "multimarkdown"))


;;; markdown-mode.el ends here
