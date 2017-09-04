;;; hl-line.el --- Configuration for hl-line-mode



;;; Commentary:
;; Set up hl-line mode to highlight the current line
;; - Use a gray highlight
;; - Make sure that we don't cancel syntax highlighting



;;; Code:
(global-hl-line-mode t)
(set-face-background 'highlight "gray13")
(set-face-attribute 'hl-line nil
                    :inherit nil
                    :background (face-background 'highlight))



;;; hl-line.el ends here
