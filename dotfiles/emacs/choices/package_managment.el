;; ============================
;; Package Management
;; ============================

;; Here we disable the ELPA package archive.
(setq package-archives
      '( ("gnu-elpa" . "https://elpa.gnu.org/packages/")
         ;; ("gnu-elpa-devel" . "https://elpa.gnu.org/devel/")
         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
         ("melpa" . "https://melpa.org/packages/")
	 ("org" . "https://orgmode.org/elpa/")
         ))

(setq package-enable-at-startup nil)
;;(setq use-package-always-ensure nil) ;; Disable automatic installation

;; This is how we can install a package directly from its Git source
;; repository.

;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  ;;(package-refresh-contents)
  (unless package-archive-contents  ;; Only refresh if the package list is empty
    (package-refresh-contents))
  (package-install 'use-package))
