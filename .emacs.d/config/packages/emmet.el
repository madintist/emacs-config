;;; emmet.el --- Configuration for emmet-mode



;;; Commentary:
;; Load and turn on emmet-mode
;; - Hook emmet-mode into web-mode



;;; Code:
(use-package emmet-mode
  :ensure t
  :defer t
  :init
  (add-hook 'web-mode-hook 'emmet-mode))



;;; emmet.el ends here
