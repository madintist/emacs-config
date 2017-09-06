;;; emacs.el --- General custom settings for Emacs



;;; Commentary:
;; This file has all settings that are Emacs-specific.
;; These settings are not linked to specific packages, etc.



;;; Code:


;; Auto save files
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Backup Files
(setq backup-by-copying t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))


;; General:
(setq-default indent-tabs-mode nil) ; Always indent with spaces, not tabs.
(setq inhibit-startup-screen t) ; Turn off the startup screen


;; Hooks:
(add-hook 'before-save-hook 'delete-trailing-whitespace)



;;; emacs.el ends here
