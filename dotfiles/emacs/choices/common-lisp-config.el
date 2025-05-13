(use-package sly
  :ensure t
  :after (package)
  :config
  ;; Configure your preferred Common Lisp implementation
  (setq inferior-lisp-program "/usr/bin/sbcl")  ; e.g., "/usr/local/bin/sbcl"

  ;; Enable SLY mode for Lisp files
  (add-hook 'lisp-mode-hook #'sly-mode)

  ;; Start SLY when opening Lisp files
  (setq sly-auto-start 'always))

(use-package sly-quicklisp
  :ensure t
  :after (sly)
  :config
  (setq sly-contribs '(sly-quicklisp)))
