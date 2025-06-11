(use-package slime
  :ensure t
  :after (package)
  :config
  ;; Configure your preferred Common Lisp implementation
  (setq inferior-lisp-program "/usr/bin/sbcl")  ; e.g., "/usr/local/bin/sbcl"
  (slime-setup '(slime-fancy)))
