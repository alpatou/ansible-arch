;; ====================
;; General Settings
;; ====================

(setq inhibit-startup-message t)
(use-package evil
  :ensure t)
;; in case i want to delete the selected text on typing
;;(use-package delsel
;;  :ensure nil ; no need to install it as it is built-in
;;  :hook (after-init . delete-selection-mode))


;; Automatically revert buffers when underlying files change externally
(global-auto-revert-mode 1)

;; Also auto-revert Dired buffers and other non-file buffers
(setq global-auto-revert-non-file-buffers t)

;; Don't show "Reverted buffer" messages in the minibuffer
(setq auto-revert-verbose nil)
