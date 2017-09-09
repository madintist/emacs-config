;;; js-comint.el --- Configuration for js-comint



;;; Commentary:



;;; Code:
(use-package js-comint
  :ensure t
  :init
  (setq inferior-js-program-command "node")
  (setq inferior-js-program-arguments '("--interactive"))
  (add-hook 'js2-mode-hook
            (lambda ()
              (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
              (local-set-key (kbd "C-M-x") 'js-send-last-sexp-and-go)
              (local-set-key (kbd "C-c b") 'js-send-buffer)
              (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)
              (local-set-key (kbd "C-c l") 'js-load-file-and-go))))



;;; js-comint.el ends here
