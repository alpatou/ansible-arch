
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
;;(require 'package)
;;(package-initialize)

;;(org-babel-load-file (concat user-emacs-directory "configuration.org"))

(defun my-elisp-format-before-save ()
  "Auto-format Emacs Lisp before saving."
  (when (eq major-mode 'emacs-lisp-mode)
    (indent-region (point-min) (point-max))  ;; Indent the whole file
    (delete-trailing-whitespace)))           ;; Remove trailing spaces

(add-hook 'before-save-hook 'my-elisp-format-before-save)

;; Auto-format init.el file on save
;;(add-hook 'emacs-lisp-mode-hook (lambda ()
;;				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company elisp-format go-mode lsp-ui rust-mode))
 '(package-vc-selected-packages '((lsp-ui :url "https://github.com/emacs-lsp/lsp-ui.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
