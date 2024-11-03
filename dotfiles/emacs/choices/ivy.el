;; ===========================
;; Ivy
;; ===========================

(use-package 
  ivy 

  :diminish 
  :config (ivy-mode 1) 
  (setq ivy-use-virtual-buffers t ivy-count-format "%d/%d " enable-recursive-minibuffers t))

(use-package 
  counsel 
  :after ivy 
  :bind (("M-x" . counsel-M-x) 
	 ("C-x C-f" . counsel-find-file) 
	 ("C-s" . swiper) ;; Enhanced search within files
         ("C-x b" . ivy-switch-buffer)))
