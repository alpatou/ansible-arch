;; Helm core
(use-package helm
  :ensure t
  :diminish
  :config
  (helm-mode 1)
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x C-f") #'helm-find-files))

;; Projectile + Helm integration
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (setq projectile-completion-system 'helm))

(use-package helm-projectile
  :ensure t
  :after (helm projectile)
  :config
  (helm-projectile-on))
