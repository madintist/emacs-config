;;; mocha.el --- Configuration for mocha mode-mode



;;; Commentary:
;; Easy way to run Mocha tests in Emacs



;;; Code:
(use-package mocha
  :ensure t
  :init
  (setq mocha-project-test-directory "tests")
  (setq mocha-reporter "spec"))



;;; mocha.el ends here
