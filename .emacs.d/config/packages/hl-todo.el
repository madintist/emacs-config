;;; hl-todo.el --- Configuration for hl-todo



;;; Commentary:
;; Globally highlight TODO comments
;; - Add occur keybinding



;;; Code:
(use-package hl-todo
  :ensure t
  :bind
  (("C-c o" . hl-todo-occur))
  :config
  (global-hl-todo-mode t))



;;; hl-todo.el ends here
