(use-package
  go-mode
  :ensure t
  :hook (go-mode . eglot-ensure))
