(add-hook 'typescript-ts-mode-hook 'eglot-ensure)
(add-hook 'tsx-ts-mode-hook 'eglot-ensure)


(use-package typescript-mode
  :ensure t
  :mode ("\\.tsx?$" . typescript-mode))
