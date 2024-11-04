;; ============================
;; Package Management
;; ============================
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/") 
			 ("org" . "https://orgmode.org/elpa/") 
			 ("elpa" . "https://elpa.gnu.org/packages/") 
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(setq package-check-signature nil)

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
