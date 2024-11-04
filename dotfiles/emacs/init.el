;; Add custom configuration directory to load-path
(add-to-list 'load-path "~/.config/emacs/choices")

;; Load individual configuration files
;;(load "custom.el")
(load "general.el")
(load "ui.el")
(load "package_managment.el")
(load "ivy-config.el")
(load "keybindings.el")
(load "lsp-config.el")

;; ============================
;; Auto-formatting Configuration
;; ============================

(use-package 
  elisp-format 
  :ensure t)

;;(org-babel-load-file (concat user-emacs-directory "configuration.org"))

;; Auto-format init.el file on save
(add-hook 'emacs-lisp-mode-hook (lambda () 
				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))
