;; Load cua-base to make cua-mode available for Evil mode
(require 'cua-base)

(use-package evil
  :ensure t
  :config
  (evil-mode 0))
;; in case i want to delete the selected text on typing
;;(use-package delsel
;;  :ensure nil ; no need to install it as it is built-in
;;  :hook (after-init . delete-selection-mode))



(defun toggle-evil-mode ()
  "Toggle Evil mode and display a message."
  (interactive)
  (if (bound-and-true-p evil-mode)
      (progn
        (evil-mode 0)
        (message "🅥   Evil mode disabled 🅧 🅧 🅧    🅥  "))
    (evil-mode 1)
    (message "🅥  Evil mode enabled  🅥  ")))

(global-set-key (kbd "C-c C-v") 'toggle-evil-mode)


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
