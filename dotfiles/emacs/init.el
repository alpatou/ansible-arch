;; Add custom configuration directory to load-path
(add-to-list 'load-path "~/.config/emacs/choices")
;;(add-to-list 'load-path "~/.config/emacs/choices/programming-languages/")

;; Load individual configuration files
;;(load "custom.el")
(load "general.el")
(load "package_managment.el")
(load "programming-languages/elisp-config.el")
(load "evil-config.el")
(load "ui.el")
(load "keybindings.el")
(load "org-mode-config.el")
(load "fuzzy-file-config.el")
(load "terminal-config.el")
(load "lsp-config.el")

(load "programming-languages/typescript-config.el")
(load "programming-languages/elixir-config.el")
(load "programming-languages/common-lisp-config.el")
(load "programming-languages/docker-config.el")
(load "programming-languages/yaml-config.el")
(load "programming-languages/c-rust-config.el")
(load "programming-languages/go-config.el")
(load "programming-languages/openscad-config.el")
(load "programming-languages/php-config.el")
(load "programming-languages/python-config.el")
(load "programming-languages/zig-config.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bbe58ef57bf5647a6c8f025f395b4440f05511c80b513e70b849c777518c81d3"
     "59e54b18c77609cbfa88d1a9b48cb865e175fe1425f453dabec938d179f0ac0d"
     "97e5f82e4e93c3a03fc823673d55cbb7e2c9cc27a6ac419b11c23ef4a2d0de26"
     "b61e6b8a20dde043f8bd49d8cfa126a86b7dcd85ce50ff71be41b78f38d6ae0b"
     "a61cdb4ba78943b7e45f20265bcf72df553d0fb53344bb9299ba0a9e585c00b3"
     "df46394d55355a6786362d2709228ec092e2e0c6b13e0720344ad1878646b56c"
     "d2c76098def8b2b10b45d2092c86ca9c8b95d58fabbc8850d28899181d8f6581"
     "19dfd2348c5c5fbf883f9cabc7ab5183c9bf0190c7d6ccbd49c7323d4424daea"
     "49f934cfd7e032ec74b27b7dd89a5573279b3306c597b5511e2b5afebf5696a2"
     "a8154615158cfa7533f050bbd1f4705cdbea386140a04988341a5a857799082e"
     "5f9bca97ed63c4694b9b1336297c40b809284701f8012659adafb307e4bb42b5"
     "43c23cd70b2ce81a1b48dc3973ff1a7c835f3f6ee49d3070236c2f068c2a819e"
     "e939e1560ed06aaf2fc71f076705e6ea0d755910d0abdb9cd85871e9ae9effe8"
     "f76876670af99c2ca9eedecc9bb7559166726800fa9774d9e9630293354f25a4"
     "117f7dfb273bb39b83a228018ccffeb85ba0983c5d4a63155a5a48ad7f7c7c86"
     "96ec7dbdcc7b0ba7e69397854d11a136bc4d040acc38724042a092b4ccdc25e1"
     "317f9fc9b30ce2d8064965f1a3cf8645ee3e8dc26dfcdc9f0e2ead337f37cac3"
     "488b82a8d9ace0aea8a6825db144e3c65c4f1ef3e090b618bf311d9cdb513322"
     "3656585faa5bd9925c0ee134b5eecf6d6a45ee2a2e81e633fa7a9a0659fdc095"
     "6dcf1ca4c7432773084b9d52649ee5eb2c663131c4c06859f648dea98d9acb3e"
     "7e98dc1aa7f5db0557691da690c38d55e83ddd33c6d268205d66e430d57fb982"
     default))
 '(package-selected-packages
   '(alabaster-themes company dockerfile-mode doric-themes ef-themes
		      eglot elixir-mode evil go-mode helm-projectile
		      lsp-ui nord-theme nordic-night-theme paredit
		      php-mode rainbow-delimiters rust-mode scad-mode
		      slime typescript-mode use-package vterm
		      yaml-mode zig-mode))
 '(package-vc-selected-packages
   '((go-mode :url "https://github.com/dominikh/go-mode.el.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
