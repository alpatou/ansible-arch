;; ============================
;; UI Settings
;; ============================

;;(set-fringe-mode 10)

(setq visible-bell t)

(set-face-attribute 'default nil
		    :font "Fira Code Retina-14")

(setq-default line-spacing 0.2)

;; Theme Configuration
(use-package nord-theme
  :ensure t
  :config
  (load-theme 'nord t))


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
(use-package vertico
  :ensure t
  )

(use-package marginalia
  :ensure t
  :hook (after-init . marginalia-mode))

(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless basic))
  (setq completion-category-defaults nil)
  (setq completion-category-overrides nil))
