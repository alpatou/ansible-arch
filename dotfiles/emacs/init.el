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
;; Auto-formatting Configuration
;; ============================

(use-package 
  elisp-format 
  :ensure t)

;; Auto-format init.el file on save
(add-hook 'emacs-lisp-mode-hook (lambda () 
				  (add-hook 'before-save-hook 'elisp-format-buffer nil 'local)))
