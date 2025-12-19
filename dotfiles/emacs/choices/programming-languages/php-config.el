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
