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
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((go-mode :url "https://github.com/dominikh/go-mode.el.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
