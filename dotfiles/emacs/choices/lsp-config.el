;; ====================
;;        LSP
;; ====================

(electric-pair-mode t)
(setq             electric-pair-open-newline-between-pairs t)
;; C, Rust , Lisp , Haskell, ELixir/Erlang
;; PHP, TS
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

(global-set-key (kbd "C-c p") 'check-if-prog-mode)
(global-set-key (kbd "C-c f") 'my-interactive-custom-format)


(add-hook 'before-save-hook 'my-custom-format-before-save)

(add-hook 'prog-mode-hook 'eglot-ensure)









;; ====================================
;; Languages here
;; ===================================

(add-hook 'typescript-ts-mode-hook 'eglot-ensure)
(add-hook 'tsx-ts-mode-hook 'eglot-ensure)

(use-package elixir-mode
  :ensure t
  :hook (elixir-mode . eglot-ensure))

(add-hook 'elixir-mode-hook 'eglot-ensure)

(add-to-list 'eglot-server-programs '(elixir-mode "~/elixir-ls/language_server.sh"))

(use-package typescript-mode
  :ensure t
  :mode ("\\.tsx?$" . typescript-mode))
(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))

(use-package yaml-mode
  :ensure t
  :mode ("\\.ya?ml\\'" . yaml-mode))

(add-to-list 'eglot-server-programs
             '(dockerfile-mode . ("docker-langserver" "--stdio")))

(setenv "YAML_CONFIG_FILE" (expand-file-name "~/.yaml.config.json"))

(use-package python
  :hook (python-mode . eglot-ensure))

(use-package
  elisp-format
  :ensure t )

(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

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

;; ----------------------------------------------------------
;; PHP LSP setup for Emacs (using Eglot + Intelephense)
;;
;; REQUIREMENTS (Pop!_OS / Ubuntu):
;;     sudo apt install php-cli composer
;;     sudo apt install nodejs npm
;;     sudo npm install -g intelephense
;;     M-x package-install RET php-mode RET
;;     M-x package-install RET web-mode RET
;;
;; This config will:
;;  - Start Eglot automatically when opening PHP files.
;;  - Tell Eglot to use Intelephense for PHP buffers.
;; ----------------------------------------------------------

(use-package
  php-mode
  :ensure t
  )

(add-hook 'php-mode-hook 'eglot-ensure)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(php-mode . ("intelephense" "--stdio"))))

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
