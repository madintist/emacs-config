;;; web-mode.el --- Configuration for web-mode



;;; Commentary:
;; Load and set up web-mode
;; - Use with the following file extensions:
;; - *.phtml
;; - *.tpl.php
;; - *.ascx / *.aspx
;; - *.erb
;; - *.mustache
;; - *.djhtml
;; - *.htm / *.html
;; - *.css
;; - Set indentation to 2 spaces



;;; Code:
(use-package web-mode
  :ensure t
  :defer t
  :mode
  (("\\.phtml\\'" . web-mode)
   ("\\.tpl\\.php\\'" . web-mode)
   ("\\.as[cp]x\\'" . web-mode)
   ("\\.erb\\'" . web-mode)
   ("\\.mustache\\'" . web-mode)
   ("\\.hbs\\'" . web-mode)
   ("\\.djhtml\\'" . web-mode)
   ("\\.html?\\'" . web-mode)
   ("\\.css\\'" . web-mode))
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))



;;; web-mode.el ends here
