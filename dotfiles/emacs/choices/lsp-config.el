;; ====================
;;        LSP
;; ====================

;; C, Rust , Lisp , Haskell, ELixir/Erlang
;; PHP, TS
;; LSP Mode for multiple languages
(use-package eglot
  :ensure t)

(use-package python
  :hook (python-mode . eglot-ensure))

(use-package
  elisp-format
  :ensure t )

(use-package
  rust-mode
  :vc (:url "https://github.com/rust-lang/rust-mode")
  :ensure t
  :hook (rust-mode . eglot-ensure))

(use-package
  go-mode
  :vc (:url "https://github.com/dominikh/go-mode.el.git")
  :ensure t
  :hook (go-mode . eglot-ensure))

;; Additional UI features for LSP (optional)
(use-package
  lsp-ui
  ;;:vc (:url "https://github.com/emacs-lsp/lsp-ui.git" :rev "HEAD")
  :ensure t
  :commands lsp-ui-mode
  :config (setq lsp-ui-sideline-enable t lsp-ui-sideline-show-diagnostics t ;; Enable inline diagnostics
		lsp-ui-sideline-show-hover t lsp-ui-doc-enable t lsp-ui-doc-delay 0.5
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
