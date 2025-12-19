
(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))


(add-to-list 'eglot-server-programs
             '(dockerfile-mode . ("docker-langserver" "--stdio")))
