;; ====================
;;        LSP
;; ====================

;; LSP Mode for multiple languages
(use-package 
  lsp-mode 
  :ensure t 
  :commands (lsp lsp-deferred) 
  :hook ((php-mode . lsp) 
	 (rust-mode . lsp) 
	 (go-mode . lsp) 
	 (typescript-mode . lsp) 
	 (js-mode . lsp) 
	 (html-mode . lsp) 
	 (python-mode . lsp) 
	 (haskell-mode . lsp) 
	 (c-mode . lsp) 
	 (lisp-mode . lsp)) 
  :config (setq lsp-idle-delay 0.500 lsp-completion-provider 
		:capf))

(setq lsp-eldoc-render-all t)

(use-package 
  go-mode 
  :ensure t 
  :mode "\\.go\\'" 
  :hook (go-mode . lsp-deferred))

;; Additional UI features for LSP (optional)
(use-package 
  lsp-ui 
  :ensure t 
  :commands lsp-ui-mode 
  :config (setq lsp-ui-sideline-enable t lsp-ui-sideline-show-diagnostics t ;; Enable inline diagnostics
		lsp-ui-sideline-show-hover t lsp-ui-doc-enable t lsp-ui-doc-delay 0.5
		lsp-ui-flycheck-enable t)) ;; Enable Flycheck integration for diagnostics

;; Company-mode for autocompletion
(use-package 
  company 
  :ensure t 
  :config (setq company-minimum-prefix-length 1 company-idle-delay 0.0) 
  :hook (prog-mode . company-mode))

;; Ensure syntax highlighting is enabled globally
(global-font-lock-mode 1)

(use-package 
  flycheck 
  :ensure t 
  :config (global-flycheck-mode))

(setq lsp-diagnostics-provider 
      :flycheck) ;; Use Flycheck for diagnostics
