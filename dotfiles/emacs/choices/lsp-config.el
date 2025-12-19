;; ====================
;;        LSP
;; ====================

(electric-pair-mode t)
(setq             electric-pair-open-newline-between-pairs t)
;; C, Rust , Lisp , Haskell, ELixir/Erlang
;; PHP, TS, Go, Zig
;; LSP Mode for multiple languages
(use-package eglot
  :ensure t
  )

(defun my-custom-format-before-save ()
  "Auto-format Emacs Lisp before saving."
  (if (derived-mode-p 'prog-mode)
      (progn
	(message "✅ You are in a programming mode! -> So i formated you...")
	(eglot-format)
	)
    ))

(defun my-interactive-custom-format ()
  "Auto-format Emacs Lisp before saving."
  (interactive)
  (if (derived-mode-p 'prog-mode)
      (progn
	(message "✅ You are in a programming mode! -> So i formated you...")
	(eglot-format)
	)
    ))


(defun check-if-prog-mode ()
  "Check if the current major mode is derived from 'prog-mode'."
  (interactive)
  (if (derived-mode-p 'prog-mode)
      (message "✅ You are in a programming mode!")
    (message "❌ This is NOT a programming mode.")))

(global-set-key (kbd "C-c m i p") 'check-if-prog-mode)
(global-set-key (kbd "C-c f") 'my-interactive-custom-format)


(add-hook 'before-save-hook 'my-custom-format-before-save)

(add-hook 'prog-mode-hook 'eglot-ensure)



;; ====================================
;; Languages here
;; ===================================





;; ===================================
;; Languages end here
;; ==================================

;; Paredit (structured editing)
(use-package paredit
  :ensure t
  :hook ((lisp-mode emacs-lisp-mode lisp-interaction-mode) . paredit-mode))

;; Rainbow Delimiters (colored parentheses)
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; Additional UI features for LSP (optional)
(use-package
  lsp-ui
  ;;:vc (:url "https://github.com/emacs-lsp/lsp-ui.git" :rev "HEAD")
  :ensure t
  :commands lsp-ui-mode
  :config (setq
	   lsp-ui-sideline-enable t
	   lsp-ui-sideline-show-diagnostics t ;; Enable inline diagnostics
	   lsp-ui-sideline-show-hover t
	   lsp-ui-doc-enable t
	   lsp-ui-doc-delay 0.5
	   lsp-ui-flymake-enable t))

;; Company-mode for autocompletion
(use-package company
  :ensure t
  ;;  :vc (:url "https://github.com/company-mode/company-mode.git")
  :config (setq company-minimum-prefix-length 1 company-idle-delay 0.0)
  :hook (prog-mode . company-mode))

;; Ensure syntax highlighting is enabled globally
(global-font-lock-mode 1)

(add-hook 'prog-mode-hook 'flymake-mode)  ;; Enable Flymake for all code


(setq lsp-diagnostics-provider
      :flymake) ;; Use Flycheck for diagnostics

(defun check-lsp-server ()
  "Check if eglot is running and suggest the preferred LSP server if missing."
  (interactive)
  (let ((lsp-server (eglot--guess-contact)))
    (if (not eglot--managed-mode)
        (if lsp-server
            (message "⚠️ No LSP server running. Suggested LSP for this mode: %s" lsp-server)
          (message "⚠️ No LSP server running, and no default server found for this mode.")))
    (message "✅ LSP server is running.")))

(global-set-key (kbd "C-c v") 'check-lsp-server)
