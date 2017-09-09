;;; keybindings.el --- Global custom keybindings



;;; Commentary:
;; All global custom keybindings are set here



;;; Code:

;; Terminal Commands:
(global-set-key (kbd "C-x t b") (lambda () (interactive) (ansi-term "/bin/bash"))) ; Start ANSI-term with Bash
(global-set-key (kbd "C-x t z") (lambda () (interactive) (ansi-term "/bin/zsh"))) ; Start ANSI-term with ZSH

;; Window Commands:
(global-set-key (kbd "C-x T F") 'toggle-frame-fullscreen) ; Set keybinding for fullscreen mode



;;; keybindings.el ends here
