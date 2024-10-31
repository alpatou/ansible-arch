(setq inhibit-startup-message t)

(set-fringe-mode 10)

(setq visible-bell t) 

(set-face-attribute 'default nil :font "Fira Code Retina-14")

(load-theme 'wombat t)


(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Customize the current line number face for better visibility
(set-face-attribute 'line-number-current-line nil
                    :foreground "red"  
                    :weight 'bold)  

;; Package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)



;; project navigation
(use-package projectile
  :ensure t
  :config
  (projectile-mode +1))

(global-set-key (kbd "C-c p") 'projectile-command-map) ;; Optional shortcut for projectile commands
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(spinner projectile company lsp-ui rust-mode lsp-mode use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
