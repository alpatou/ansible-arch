(use-package slime
  :ensure t
  :after (package)
  :config
  ;; Configure your preferred Common Lisp implementation
  (setq inferior-lisp-program "/usr/bin/sbcl")  ; e.g., "/usr/local/bin/sbcl"
  (slime-setup '(slime-fancy)))

;; Proper Common Lisp formatting on save
(defun my-lisp-format-buffer ()
  (when (eq major-mode 'lisp-mode)
    (indent-region (point-min) (point-max))))

(defun my-lisp-enable-format-on-save ()
  (add-hook 'before-save-hook #'my-lisp-format-buffer nil t))

(add-hook 'lisp-mode-hook #'my-lisp-enable-format-on-save)

;; Optional visual: Rainbow delimiters
(use-package rainbow-delimiters
  :hook (lisp-mode . rainbow-delimiters-mode))
