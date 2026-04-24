(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))


(use-package elixir-mode
  :ensure t
  :hook (elixir-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               `(elixir-mode ,(expand-file-name "~/elixir-ls/language_server.sh"))))
