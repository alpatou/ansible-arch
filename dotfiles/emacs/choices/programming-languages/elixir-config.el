(use-package elixir-mode
  :ensure t)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '((elixir-mode elixir-ts-mode heex-ts-mode)
                 . ("~/lexical/_build/dev/package/lexical/bin/start_lexical.sh"))))
