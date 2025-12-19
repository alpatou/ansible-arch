(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(use-package
  rust-mode
  :vc (:url "https://github.com/rust-lang/rust-mode")
  :ensure t
  :hook (rust-mode . eglot-ensure))
