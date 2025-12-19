(use-package zig-mode
  :ensure t
  :hook ((zig-mode . eglot-ensure)
         ))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(zig-mode . ("zls"))))
