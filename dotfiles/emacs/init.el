;; ====================
;; General Settings
;; ====================

(setq inhibit-startup-message t)


;; ============================
;; UI Settings
;; ============================

(set-fringe-mode 10)

(setq visible-bell t)

(set-face-attribute 'default nil 
		    :font "Fira Code Retina-14")

(load-theme 'wombat t)


;; ============================
;; Line Numbers Configuration
;; ============================

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Customize the current line number face for better visibility
(set-face-attribute 'line-number-current-line nil 
		    :foreground "red" 
		    :weight 'bold)

;; ============================
;; Package Management
;; ============================

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package if not already installed
(unless (package-installed-p 'use-package) 
  (package-refresh-contents) 
  (package-install 'use-package))

(require 'use-package)

;; ============================
;; Which Key Setup
;; ============================

(use-package 
  which-key 
  :ensure t 
  :config (setq which-key-idle-delay 0.5) ;; Show after 0.5 seconds
  (which-key-mode))			  ;; Enable which-key mode

;; ============================
;; Rust Development Setup
;; ============================

(use-package 
  rust-mode 
  :hook (rust-mode . lsp) ;; Enable LSP when rust-mode is active
  :config (setq rust-format-on-save t))	;; Format on save

(use-package 
  lsp-mode 
  :commands lsp 
  :config (setq lsp-prefer-flymake nil)	;; Use flycheck instead of flymake
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")) ;; Use clippy for diagnostics

(use-package 
  lsp-ui 
  :commands lsp-ui-mode 
  :config (setq lsp-ui-doc-enable t)) ;; Enable documentation popup

(use-package 
  company 
  :hook (after-init . global-company-mode) 
  :config (setq company-minimum-prefix-length 1 company-idle-delay 0.0)) ;; Show completion suggestions immediately

;; ============================
;; Flycheck Setup
;; ============================

(use-package 
  flycheck 
  :ensure t 
  :init (global-flycheck-mode))	;; Enable Flycheck globally

;; Ensure Flycheck integrates with LSP
(setq lsp-diagnostic-package 
      :flycheck)

;; ============================
;; Key Bindings for Navigation
;; ============================

(require 'which-key)

(global-set-key (kbd "C-x C-f") 'find-file)	  ;; Open file
(global-set-key (kbd "M-<") 'beginning-of-buffer) ;; Go to start of file
(global-set-key (kbd "M->") 'end-of-buffer)	  ;; Go to end of file
(global-set-key (kbd "C-x b") 'switch-to-buffer)  ;; Switch buffers

;; Set Space as leader key
(global-set-key (kbd "SPC") 'which-key-show-top-level)

;; ============================
;; Auto-formatting Configuration
;; ============================

(use-package 
  elisp-format 
  :ensure t)

;; Auto-format init.el file on save
(add-hook 'emacs-lisp-mode-hook (lambda () 
				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil) 
 '(package-selected-packages '(which-key cmake-mode use-package rust-mode projectile elisp-format
					 company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
