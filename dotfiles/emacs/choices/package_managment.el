;; ============================
;; Package Management
;; ============================
(require 'package)

;; Here we disable the ELPA package archive.
(setq package-archives
      '(;; ("gnu-elpa" . "https://elpa.gnu.org/packages/")
        ;; ("gnu-elpa-devel" . "https://elpa.gnu.org/devel/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")
			  ("org" . "https://orgmode.org/elpa/") 
        ))


;; This is how we can install a package directly from its Git source
;; repository.

;;(unless (package-installed-p 'math-delimiters) ; change NAME-OF-PACKAGE
 ;; (package-vc-install "https://github.com/oantolin/math-delimiters"))
;;(package-vc-install "https://github.com/oantolin/math-delimiters.git")
(use-package math-delimiters
 :vc (:url "https://github.com/oantolin/math-delimiters"
     ))
;;(unless package-archive-contents (package-refresh-contents))

;; Install use-package if not already installed
(unless (package-installed-p 'use-package) 
  (package-refresh-contents) 
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)
(defun package--save-selected-packages 
    (&rest 
     opt)
  nil)
