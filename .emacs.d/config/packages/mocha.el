;;; mocha.el --- Configuration for mocha mode-mode



;;; Commentary:
;; Easy way to run Mocha tests in Emacs



;;; Code:
(use-package mocha
  :ensure t
  :config
  (mocha-project-test-directory . "tests"))



;;; mocha.el ends here
