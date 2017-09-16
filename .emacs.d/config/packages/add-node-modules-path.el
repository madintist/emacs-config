;;; add-node-modules-path.el --- Plugin to add node_modules/ to path



;;; Commentary:



;;; Code:
(use-package add-node-modules-path
  :ensure t
  :config
  (eval-after-load 'js-mode
    '(add-hook 'js-mode-hook #'add-node-modules-path))
  (eval-after-load 'js2-mode
    '(add-hook 'js2-mode-hook #'add-node-modules-path)))



;;; add-node-modules-path.el ends here
