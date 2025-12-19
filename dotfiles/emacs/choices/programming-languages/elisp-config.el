(defun my-elisp-format-before-save ()
  "Auto-format Emacs Lisp before saving."
  (when (eq major-mode 'emacs-lisp-mode)
    (indent-region (point-min) (point-max)) ;; Indent the whole file
    (delete-trailing-whitespace)))           ;; Remove trailing spaces

(add-hook 'before-save-hook 'my-elisp-format-before-save)
