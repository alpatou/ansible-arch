;; Add custom configuration directory to load-path
(add-to-list 'load-path "~/.config/emacs/choices")

;; Load individual configuration files
(load "general.el")
(load "ui.el")
(load "package_managment.el")
(load "ivy.el")
(load "keybindings.el")

;; ============================
;; Auto-formatting Configuration
;; ============================

(use-package 
  elisp-format 
  :ensure t)

;; Auto-format init.el file on save
(add-hook 'emacs-lisp-mode-hook (lambda () 
				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))

(setq custom-file "~/.emacs.d/custom.el")
