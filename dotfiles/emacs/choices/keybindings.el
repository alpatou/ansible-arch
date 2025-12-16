;; ============================
;; Key Bindings for Navigation
;; ============================

(global-set-key (kbd "C-x C-f") 'find-file)	  ;; Open file
(global-set-key (kbd "M-<") 'beginning-of-buffer) ;; Go to start of file
(global-set-key (kbd "M->") 'end-of-buffer)	  ;; Go to end of file
(global-set-key (kbd "C-x b") 'switch-to-buffer)  ;; Switch buffers

(global-set-key (kbd "C-c 2") 'set-mark-command)

;; Enable directional window movement with Shift+arrow keys
;;(windmove-default-keybindings)
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c j") 'windmove-down)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c l") 'windmove-right)

(defun toggle-evil-mode ()
  "Toggle Evil mode and display a message."
  (interactive)
  (if (bound-and-true-p evil-mode)
      (progn
        (evil-mode 0)
        (message "Evil mode disabled"))
    (evil-mode 1)
    (message "Evil mode enabled")))


(defun isearch-word-at-point ()
  "Start an incremental search forward with the word under cursor."
  (interactive)
  (let ((word (thing-at-point 'word t)))
    (when word
      (isearch-mode t)
      (isearch-yank-string word))))

;; Bind to * if not already used
(global-set-key (kbd "C-c C-w") 'isearch-word-at-point)


(defun isearch-symbol-at-point ()
  "Start an incremental search forward with the symbol under cursor."
  (interactive)
  (let ((sym (thing-at-point 'symbol t)))
    (when sym
      (isearch-mode t)
      (isearch-yank-string sym))))

;; p for phrase
(global-set-key (kbd "C-c C-p") 'isearch-symbol-at-point)
