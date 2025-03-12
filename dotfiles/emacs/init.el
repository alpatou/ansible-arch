;; Add custom configuration directory to load-path
(add-to-list 'load-path "~/.config/emacs/choices")

;; Load individual configuration files
;;(load "custom.el")
(load "general.el")
(load "ui.el")
(load "package_managment.el")
;;(load "vertico-config.el")
(load "keybindings.el")
(load "lsp-config.el")

;; ============================
;; Auto-formatting Configuration
;; ============================

(use-package 
  elisp-format 
  :vc (:url "https://github.com/gonewest818/elisp-format.git")
  :ensure t)

;;(org-babel-load-file (concat user-emacs-directory "configuration.org"))

;; Auto-format init.el file on save
(add-hook 'emacs-lisp-mode-hook (lambda () 
				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-vc-selected-packages '((lsp-ui :url "https://github.com/emacs-lsp/lsp-ui.git"))))
(custom-set-faces
 )
