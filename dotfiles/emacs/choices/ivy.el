;; ===========================
;; Ivy
;; ===========================

;; Refresh package list if `ivy` is not already installed
(unless (package-installed-p 'ivy) 
  (package-refresh-contents) 
  (package-install 'ivy))

(ivy-mode 1)