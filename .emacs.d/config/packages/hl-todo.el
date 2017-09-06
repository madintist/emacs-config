;;; hl-todo.el --- Configuration for hl-todo-mode



;;; Commentary:
;; Globally highlight TODO comments
;; - Add occur keybinding



;;; Code:
(use-package hl-todo-mode
  :ensure t
  :bind
  (("C-c o" . hl-todo-occur))
  :config
  (global-hl-todo-mode t))



;;; hl-todo.el ends here
