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
   '("96ec7dbdcc7b0ba7e69397854d11a136bc4d040acc38724042a092b4ccdc25e1"
     "317f9fc9b30ce2d8064965f1a3cf8645ee3e8dc26dfcdc9f0e2ead337f37cac3"
     "488b82a8d9ace0aea8a6825db144e3c65c4f1ef3e090b618bf311d9cdb513322"
     "3656585faa5bd9925c0ee134b5eecf6d6a45ee2a2e81e633fa7a9a0659fdc095"
     "6dcf1ca4c7432773084b9d52649ee5eb2c663131c4c06859f648dea98d9acb3e"
     "7e98dc1aa7f5db0557691da690c38d55e83ddd33c6d268205d66e430d57fb982"
     default))
 '(package-selected-packages
   '(company dockerfile-mode doric-themes ef-themes elixir-mode evil
	     go-mode helm-projectile lsp-ui modus-themes nord-theme
	     nordic-night-theme paredit php-mode rainbow-delimiters
	     rust-mode scad-mode slime typescript-mode vterm yaml-mode
	     zig-mode))
 '(package-vc-selected-packages
   '((go-mode :url "https://github.com/dominikh/go-mode.el.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
