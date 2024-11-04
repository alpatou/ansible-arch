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

;; Additional UI features for LSP (optional)
(use-package 
  lsp-ui 
  :ensure t 
  :commands lsp-ui-mode 
  :config (setq lsp-ui-sideline-enable t lsp-ui-doc-enable t))

;; Company-mode for autocompletion
(use-package 
  company 
  :ensure t 
  :config (setq company-minimum-prefix-length 1 company-idle-delay 0.0) 
  :hook (prog-mode . company-mode))
