;;; projectile.el --- Configuration for projectile



;;; Commentary:
;; Load and turn on projectile-mode



;;; Code:
(use-package projectile
  :ensure t
  :config
  (setq projectile-mode-line
        '(:eval (format " Projectile[%s(%s)]"
                        (projectile-project-name))))
  (projectile-mode t))



;;; projectile.el ends here
