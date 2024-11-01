;; ====================
;; General Settings
;; ====================

(setq inhibit-startup-message t)


;; ============================
;; UI Settings
;; ============================

;;(set-fringe-mode 10)

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

(setq package-archives '(("melpa" . "https://melpa.org/packages/") 
			 ("org" . "https://orgmode.org/elpa/") 
			 ("elpa" . "https://elpa.gnu.org/packages/")))
;;        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))



(setq package-check-signature nil)

(package-initialize)

(package-refresh-contents)

(package-install 'use-package)

;;(unless package-archive-contents (package-refresh-contents))

;; Install use-package if not already installed
(unless (package-installed-p 'use-package) 
  (package-refresh-contents) 
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)


;; ===========================
;; Ivy
;; ===========================

;; Refresh package list if `ivy` is not already installed
(unless (package-installed-p 'ivy) 
  (package-refresh-contents) 
  (package-install 'ivy))

(ivy-mode 1)

;; ============================
;; Key Bindings for Navigation
;; ============================

;;(require 'which-key)

(global-set-key (kbd "C-x C-f") 'find-file)	  ;; Open file
(global-set-key (kbd "M-<") 'beginning-of-buffer) ;; Go to start of file
(global-set-key (kbd "M->") 'end-of-buffer)	  ;; Go to end of file
(global-set-key (kbd "C-x b") 'switch-to-buffer)  ;; Switch buffers

;; Set Space as leader key
;;(global-set-key (kbd "SPC") 'which-key-show-top-level)

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
 '(package-selected-packages '(elisp-format ivy use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
