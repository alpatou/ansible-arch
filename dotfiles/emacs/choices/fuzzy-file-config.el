(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

(use-package counsel
  :ensure t
  :after ivy
  :bind (("C-c C-f" . counsel-find-file)))

(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))

(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :config
  (counsel-projectile-mode))
