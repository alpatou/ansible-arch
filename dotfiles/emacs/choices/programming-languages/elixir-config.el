(use-package elixir-mode
  :ensure t
  :hook (elixir-mode . eglot-ensure))

(add-hook 'elixir-mode-hook 'eglot-ensure)

(add-to-list 'eglot-server-programs '(elixir-mode "~/elixir-ls/language_server.sh"))
