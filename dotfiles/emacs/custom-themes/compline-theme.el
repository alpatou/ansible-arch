;;; compline-theme.el --- Compline color theme for Emacs -*- lexical-binding: t; -*-
;;
;; Author: joshuablais <https://github.com/jblais493>
;; Maintainer:
;; Source: https://compline-theme.el/
;; Version: 1.0
;;
;;; Commentary:
;; A dark, warm, low-contrast theme with muted colors.
;; Converted from Doom Emacs theme to vanilla Emacs.
;;
;;; Code:

(deftheme compline
  "A dark, warm theme with muted colors inspired by compline.")

(let* ((class '((class color) (min-colors 89)))
       ;; Base colors
       (bg         "#1a1d21")
       (bg-alt     "#22262b")
       (base0      "#0f1114")
       (base1      "#171a1e")
       (base2      "#1f2228")
       (base3      "#282c34")
       (base4      "#3d424a")
       (base5      "#515761")
       (base6      "#676d77")
       (base7      "#8b919a")
       (base8      "#e0dcd4")
       (fg         "#f0efeb")
       (fg-alt     "#ccc4b4")

       ;; Color palette
       (grey       "#3d424a")
       (red        "#CDACAC")
       (orange     "#ccc4b4")
       (green      "#b8c4b8")
       (blue       "#b4bcc4")
       (yellow     "#d4ccb4")
       (violet     "#8b919a")
       (teal       "#b4c4bc")
       (dark-blue  "#9ca4ac")
       (magenta    "#8b919a")
       (cyan       "#b4c0c8")
       (dark-cyan  "#98a4ac")

       ;; Derived colors (pre-computed)
       (bg-dark    "#14161a")
       (bg-darker  "#0d0e11")
       (bg-light   "#1d2025")
       (base3-dark "#21252b")
       (selection  base4))

  (custom-theme-set-faces
   'compline

   ;; Base faces
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(fringe ((,class (:background ,bg :foreground ,base4))))
   `(region ((,class (:background ,selection :distant-foreground ,fg))))
   `(highlight ((,class (:background ,yellow :foreground ,base0))))
   `(cursor ((,class (:background ,fg))))
   `(shadow ((,class (:foreground ,base5))))
   `(minibuffer-prompt ((,class (:foreground ,cyan))))
   `(tooltip ((,class (:background ,bg-alt :foreground ,fg))))
   `(secondary-selection ((,class (:background ,base4))))
   `(lazy-highlight ((,class (:background ,base4 :foreground ,fg :weight bold))))
   `(match ((,class (:foreground ,green :background ,base0 :weight bold))))
   `(trailing-whitespace ((,class (:background ,red))))
   `(vertical-border ((,class (:foreground ,bg-dark :background ,bg-dark))))
   `(link ((,class (:foreground ,cyan :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,magenta :underline t :weight normal))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,cyan))))
   `(font-lock-comment-face ((,class (:foreground ,base4))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,base4))))
   `(font-lock-doc-face ((,class (:foreground ,base4))))
   `(font-lock-constant-face ((,class (:foreground ,base7))))
   `(font-lock-function-name-face ((,class (:foreground ,cyan))))
   `(font-lock-keyword-face ((,class (:foreground ,base8))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,base8))))
   `(font-lock-warning-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,red :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,cyan))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,orange))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,yellow))))

   ;; Mode line
   `(mode-line ((,class (:background ,base1 :foreground ,fg :box (:line-width 4 :color ,base1)))))
   `(mode-line-inactive ((,class (:background ,bg-darker :foreground ,base4 :box (:line-width 4 :color ,bg-darker)))))
   `(mode-line-emphasis ((,class (:foreground ,yellow :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,fg :weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,cyan :weight bold))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,base4 :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,bg :weight bold))))

   ;; Search
   `(isearch ((,class (:foreground ,base0 :background ,yellow :weight bold))))
   `(isearch-fail ((,class (:foreground ,red :weight bold))))

   ;; Company (completion)
   `(company-tooltip ((,class (:background ,bg-alt :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,base4))))
   `(company-tooltip-common ((,class (:foreground ,cyan :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,base6))))
   `(company-scrollbar-bg ((,class (:background ,base3))))
   `(company-scrollbar-fg ((,class (:background ,cyan))))

   ;; Vertico
   `(vertico-current ((,class (:background ,base3 :foreground ,fg :weight bold))))

   ;; Orderless
   `(orderless-match-face-0 ((,class (:foreground ,cyan :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,green :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,yellow :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,orange :weight bold))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,fg :weight ultra-bold :height 1.3))))
   `(org-level-2 ((,class (:foreground "#c4c8ce" :weight bold :height 1.15))))
   `(org-level-3 ((,class (:foreground "#a8b4be" :weight bold))))
   `(org-level-4 ((,class (:foreground ,blue :weight semi-bold))))
   `(org-level-5 ((,class (:foreground "#90959d" :weight semi-bold))))
   `(org-level-6 ((,class (:foreground "#878d94" :weight semi-bold))))
   `(org-level-7 ((,class (:foreground "#7e858b" :weight semi-bold))))
   `(org-level-8 ((,class (:foreground ,fg :weight semi-bold))))
   `(org-block ((,class (:background ,bg-darker :foreground ,fg))))
   `(org-block-begin-line ((,class (:foreground ,base4 :slant italic :background ,bg-darker))))
   `(org-block-end-line ((,class (:foreground ,base4 :slant italic :background ,bg-darker))))
   `(org-document-title ((,class (:foreground ,cyan :weight bold :height 1.4))))
   `(org-document-info ((,class (:foreground ,cyan))))
   `(org-document-info-keyword ((,class (:foreground ,base5))))
   `(org-meta-line ((,class (:foreground ,base5))))
   `(org-quote ((,class (:background ,base1 :slant italic))))
   `(org-ellipsis ((,class (:foreground ,red :underline nil))))
   `(org-hide ((,class (:foreground ,bg))))
   `(org-link ((,class (:foreground ,cyan :underline t))))
   `(org-code ((,class (:foreground ,orange))))
   `(org-verbatim ((,class (:foreground ,green))))
   `(org-date ((,class (:foreground ,dark-cyan))))
   `(org-done ((,class (:foreground ,green :weight bold))))
   `(org-todo ((,class (:foreground ,red :weight bold))))

   ;; Markdown
   `(markdown-header-face-1 ((,class (:foreground ,red :weight bold :height 1.3))))
   `(markdown-header-face-2 ((,class (:foreground ,red :weight bold :height 1.2))))
   `(markdown-header-face-3 ((,class (:foreground ,red :weight bold :height 1.1))))
   `(markdown-header-face-4 ((,class (:foreground ,red :weight bold))))
   `(markdown-markup-face ((,class (:foreground ,base5))))
   `(markdown-code-face ((,class (:background ,bg-darker :foreground ,cyan))))
   `(markdown-inline-code-face ((,class (:foreground ,cyan))))

   ;; Outline mode
   `(outline-1 ((,class (:foreground ,fg :weight ultra-bold))))
   `(outline-2 ((,class (:foreground "#c4c8ce" :weight bold))))
   `(outline-3 ((,class (:foreground "#a8b4be" :weight bold))))
   `(outline-4 ((,class (:foreground ,blue))))
   `(outline-5 ((,class (:foreground "#90959d"))))
   `(outline-6 ((,class (:foreground "#878d94"))))
   `(outline-7 ((,class (:foreground "#7e858b"))))
   `(outline-8 ((,class (:foreground ,fg))))

   ;; CSS/SCSS mode
   `(css-selector ((,class (:foreground ,red))))
   `(css-property ((,class (:foreground ,fg))))
   `(css-proprietary-property ((,class (:foreground ,orange))))

   ;; Diff mode
   `(diff-added ((,class (:foreground ,green :background nil))))
   `(diff-removed ((,class (:foreground ,red :background nil))))
   `(diff-changed ((,class (:foreground ,yellow))))
   `(diff-header ((,class (:foreground ,cyan))))
   `(diff-file-header ((,class (:foreground ,blue :weight bold))))
   `(diff-refine-added ((,class (:background ,green :foreground ,base0))))
   `(diff-refine-removed ((,class (:background ,red :foreground ,base8))))

   ;; Magit
   `(magit-branch-local ((,class (:foreground ,cyan))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-tag ((,class (:foreground ,yellow))))
   `(magit-hash ((,class (:foreground ,base6))))
   `(magit-section-heading ((,class (:foreground ,blue :weight bold))))
   `(magit-section-highlight ((,class (:background ,bg-alt))))
   `(magit-diff-context-highlight ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(magit-diff-added ((,class (:foreground ,green))))
   `(magit-diff-added-highlight ((,class (:foreground ,green :background ,bg-alt))))
   `(magit-diff-removed ((,class (:foreground ,red))))
   `(magit-diff-removed-highlight ((,class (:foreground ,red :background ,bg-alt))))

   ;; Flymake
   `(flymake-error ((,class (:underline (:style wave :color ,red)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flymake-note ((,class (:underline (:style wave :color ,cyan)))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,cyan)))))

   ;; LSP
   `(lsp-face-highlight-textual ((,class (:background ,base3 :foreground ,fg))))
   `(lsp-face-highlight-read ((,class (:background ,base3 :foreground ,fg))))
   `(lsp-face-highlight-write ((,class (:background ,base3 :foreground ,fg :weight bold))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,orange))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,magenta))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,blue))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,teal))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,fg))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,base6))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red :weight bold))))

   ;; Whitespace mode
   `(whitespace-space ((,class (:foreground ,base4))))
   `(whitespace-tab ((,class (:foreground ,base4))))
   `(whitespace-newline ((,class (:foreground ,base4))))
   `(whitespace-trailing ((,class (:background ,red))))
   `(whitespace-line ((,class (:background ,bg-alt :foreground ,yellow))))

   ;; Show-paren mode
   `(show-paren-match ((,class (:background ,base4 :foreground ,cyan :weight bold))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,base0 :weight bold))))

   ;; Eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,yellow :weight bold))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,blue :weight bold))))
   `(dired-symlink ((,class (:foreground ,cyan))))
   `(dired-flagged ((,class (:foreground ,red))))
   `(dired-marked ((,class (:foreground ,yellow :weight bold))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,cyan :weight bold))))
   `(eshell-ls-directory ((,class (:foreground ,blue :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,cyan))))
   `(eshell-ls-executable ((,class (:foreground ,green :weight bold))))

   ;; Term
   `(term-color-black ((,class (:foreground ,base0 :background ,base0))))
   `(term-color-red ((,class (:foreground ,red :background ,red))))
   `(term-color-green ((,class (:foreground ,green :background ,green))))
   `(term-color-yellow ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-blue ((,class (:foreground ,blue :background ,blue))))
   `(term-color-magenta ((,class (:foreground ,magenta :background ,magenta))))
   `(term-color-cyan ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-white ((,class (:foreground ,base8 :background ,base8))))))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'compline)

;;; compline-theme.el ends here
