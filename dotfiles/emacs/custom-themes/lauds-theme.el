;;; lauds-theme.el --- Lauds light color theme for Emacs -*- lexical-binding: t; -*-
;;
;; Author: joshuablais <https://github.com/jblais493>
;; Maintainer:
;; Source: http://kkga.github.io/spacegray/
;; Version: 1.0
;;
;;; Commentary:
;; A light, warm theme with muted colors inspired by aged parchment.
;; Converted from Doom Emacs theme to vanilla Emacs.
;;
;;; Code:

(deftheme lauds
  "A light, warm theme with muted colors inspired by aged parchment.")

(let* ((class '((class color) (min-colors 89)))
       ;; Base colors
       (bg         "#f0efeb")
       (bg-alt     "#e0dcd4")
       (base0      "#f5f4f2")
       (base1      "#efeeed")
       (base2      "#e5e3e0")
       (base3      "#d8d6d3")
       (base4      "#b8b5b0")
       (base5      "#9a9791")
       (base6      "#7d7a75")
       (base7      "#5f5c58")
       (base8      "#2d2a27")
       (fg         "#1a1d21")
       (fg-alt     "#4A4D51")

       ;; Color palette
       (grey       "#b8b5b0")
       (red        "#8B6666")
       (orange     "#7A6D5A")
       (green      "#5A6B5A")
       (blue       "#5A6B7A")
       (yellow     "#8B7E52")
       (violet     "#7d7470")
       (teal       "#4D6B6B")
       (dark-blue  "#546070")
       (magenta    "#756e75")
       (cyan       "#64757d")
       (dark-cyan  "#546470")

       ;; Derived colors (pre-computed)
       (bg-dark    "#d5d1c9")
       (bg-darker  "#cac6be")
       (bg-light   "#f5f4f0")
       (base3-dark "#cbc9c6")
       (selection  base4))

  (custom-theme-set-faces
   'lauds

   ;; Base faces
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(fringe ((,class (:background ,bg :foreground ,base4))))
   `(region ((,class (:background ,selection :distant-foreground ,fg))))
   `(highlight ((,class (:background ,orange :foreground ,base0))))
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
   `(font-lock-comment-face ((,class (:foreground ,base5))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,base5))))
   `(font-lock-doc-face ((,class (:foreground ,base5))))
   `(font-lock-constant-face ((,class (:foreground ,teal))))
   `(font-lock-function-name-face ((,class (:foreground ,blue))))
   `(font-lock-keyword-face ((,class (:foreground ,base6))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg-alt))))
   `(font-lock-warning-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,red :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,cyan))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,orange))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,yellow))))

   ;; Mode line
   `(mode-line ((,class (:background ,base1 :foreground ,fg :box (:line-width 4 :color ,base1)))))
   `(mode-line-inactive ((,class (:background ,bg-darker :foreground ,base5 :box (:line-width 4 :color ,bg-darker)))))
   `(mode-line-emphasis ((,class (:foreground ,orange :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,fg :weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,cyan :weight bold))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,base4 :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,bg :weight bold))))

   ;; Search
   `(isearch ((,class (:foreground ,base0 :background ,orange :weight bold))))
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
   `(org-level-2 ((,class (:foreground "#3e434f" :weight bold :height 1.15))))
   `(org-level-3 ((,class (:foreground "#4e5868" :weight bold))))
   `(org-level-4 ((,class (:foreground ,blue :weight semi-bold))))
   `(org-level-5 ((,class (:foreground "#667080" :weight semi-bold))))
   `(org-level-6 ((,class (:foreground "#6e7685" :weight semi-bold))))
   `(org-level-7 ((,class (:foreground "#757c8a" :weight semi-bold))))
   `(org-level-8 ((,class (:foreground ,fg :weight semi-bold))))
   `(org-block ((,class (:background ,bg-darker :foreground ,fg))))
   `(org-block-begin-line ((,class (:foreground ,base5 :slant italic :background ,bg-darker))))
   `(org-block-end-line ((,class (:foreground ,base5 :slant italic :background ,bg-darker))))
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
   `(outline-2 ((,class (:foreground "#3e434f" :weight bold))))
   `(outline-3 ((,class (:foreground "#4e5868" :weight bold))))
   `(outline-4 ((,class (:foreground ,blue))))
   `(outline-5 ((,class (:foreground "#667080"))))
   `(outline-6 ((,class (:foreground "#6e7685"))))
   `(outline-7 ((,class (:foreground "#757c8a"))))
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
   `(term-color-black ((,class (:foreground ,base8 :background ,base8))))
   `(term-color-red ((,class (:foreground ,red :background ,red))))
   `(term-color-green ((,class (:foreground ,green :background ,green))))
   `(term-color-yellow ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-blue ((,class (:foreground ,blue :background ,blue))))
   `(term-color-magenta ((,class (:foreground ,magenta :background ,magenta))))
   `(term-color-cyan ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-white ((,class (:foreground ,base0 :background ,base0))))))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lauds)

;;; lauds-theme.el ends here
