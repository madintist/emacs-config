;;; projectile.el --- Configuration for projectile



;;; Commentary:
;; Load and turn on projectile-mode



;;; Code:
(use-package projectile
  :ensure t
  :init
  (setq projectile-project-root-files-functions '(projectile-root-top-down))
  (setq projectile-project-root-files
        '(".git" ".bzr" ".svn" ".hg"  "_darcs" ".projectile" "Makefile"))
  :config
  (projectile-mode t))



;;; projectile.el ends here
