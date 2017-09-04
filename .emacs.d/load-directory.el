;;; load-directory.el --- Function to recursively load all config files



;;; Commentary:
;; Define the `load-directory' function.
;; This will recursively load all `.el' files
;; in a specified directory.



;;; Code:
(defun load-directory (directory)
  "Recursively load all `.el' files in DIRECTORY."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
           (fullpath (concat directory "/" path))
           (isdir (car (cdr element)))
           (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
        (load-directory fullpath))
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
        (load (file-name-sans-extension fullpath)))))))



;;; load-directory.el ends here
