;;; inf-ruby.el --- Configuration for inf-ruby (Ruby REPL backend)



;;; Commentary:
;; Load and configure inf-ruby
;; Hook to enhanced ruby mode



;;; Code:
(use-package inf-ruby
  :ensure t
  :init
  (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode))



;;; inf-ruby.el ends here
