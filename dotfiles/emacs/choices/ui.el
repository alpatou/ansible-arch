;; ============================
;; UI Settings
;; ============================

;;(set-fringe-mode 10)

(setq visible-bell t)

(set-face-attribute 'default nil 
		    :font "Fira Code Retina-14")

(setq-default line-spacing 0.2)

(load-theme 'wombat t)

(show-paren-mode 1)

;; ============================
;; Line Numbers Configuration
;; ============================

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Customize the current line number face for better visibility
(set-face-attribute 'line-number-current-line nil 
		    :foreground "red" 
		    :weight 'bold)
