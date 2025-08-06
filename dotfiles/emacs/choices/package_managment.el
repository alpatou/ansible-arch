;; ============================
;; Package Management
;; ============================

;; Here we disable the ELPA package archive.
(setq package-archives
      '( ("melpa" . "https://melpa.org/packages/")
         ("org" . "https://orgmode.org/elpa/")
         ("gnu-elpa" . "https://elpa.gnu.org/packages/")
         ;; ("gnu-elpa-devel" . "https://elpa.gnu.org/devel/")
         ("nongnu" . "https://elpa.nongnu.org/nongnu/")

         ))

(setq package-enable-at-startup nil)
;;(setq use-package-always-ensure nil) ;; Disable automatic installation

;; This is how we can install a package directly from its Git source
;; repository.

(when (< emacs-major-version 29)
  (unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package)))
