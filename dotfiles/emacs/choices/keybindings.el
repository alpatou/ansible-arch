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

;; on mac we have problem, need to overwrite it
(global-set-key (kbd "C-.") 'set-mark-command)
