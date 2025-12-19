;; ====================
;; General Settings
;; ====================

(setq inhibit-startup-message t)


;; Automatically revert buffers when underlying files change externally
(global-auto-revert-mode 1)

;; Also auto-revert Dired buffers and other non-file buffers
(setq global-auto-revert-non-file-buffers t)

;; Don't show "Reverted buffer" messages in the minibuffer
(setq auto-revert-verbose nil)

(setq auto-save-default nil)

;; Word wrap globally
(global-visual-line-mode 1)
