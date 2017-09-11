;;; keybindings.el --- Global custom keybindings



;;; Commentary:
;; All global custom keybindings are set here



;;; Code:

;; Terminal Commands:
(global-set-key (kbd "C-x t b") (lambda () (interactive) (ansi-term "/bin/bash" "ANSI-Term : Bash"))) ; Start ANSI-Term with a Bash shell
(global-set-key (kbd "C-x t e") 'eshell) ; Start Eshell
(global-set-key (kbd "C-x t z") (lambda () (interactive) (ansi-term "/bin/zsh" "ANSI-Term : Zsh"))) ; Start ANSI-Term with a Zsh shell


;; Window Commands:
(global-set-key (kbd "C-x T F") 'toggle-frame-fullscreen) ; Set keybinding for fullscreen mode



;;; keybindings.el ends here
