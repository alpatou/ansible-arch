(use-package org
  :pin melpa
  :ensure t
  )

(setq org-todo-keywords
      '((sequence "TODO" "RESEARCHING" "TINKERING" "|" "DONE" "CANCELED")))


(setq org-todo-keyword-faces
      '(("TODO"      . (:foreground "cyan"          :weight bold))
        ("RESEARCHING"      . (:foreground "orange"       :weight bold))
        ("TINKERING"   . (:foreground "magenta"      :weight bold))
        ("DONE"      . (:foreground "spring green"        :weight bold))
        ("CANCELED"  . (:foreground "chocolate"         :weight bold))))
