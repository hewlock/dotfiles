(deftheme solarized
  "Created 2017-10-17.")

(defface solarized-base03-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#fdf6e3"))
    (((background light) (class color) (min-colors 88)) (:background "#002b36"))
    (((background dark)) (:background "brightwhite"))
    (t (:background "brightblack")))
  "Background: Base03 in light mode; Base3 in dark mode")
(defface solarized-base03-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#fdf6e3"))
    (((background light) (class color) (min-colors 88)) (:foreground "#002b36"))
    (((background dark)) (:foreground "brightwhite"))
    (t (:foreground "brightblack")))
  "Background: Base03 in light mode; Base3 in dark mode")
(defface solarized-base02-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#eee8d5"))
    (((background light) (class color) (min-colors 88)) (:foreground "#073642"))
    (((background dark)) (:foreground "white"))
    (t (:foreground "black")))
  "Foreground: Base02 in light mode; Base2 in dark mode")
(defface solarized-base01-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#93a1a1"))
    (((background light) (class color) (min-colors 88)) (:foreground "#586e75"))
    (((background dark)) (:foreground "brightcyan"))
    (t (:foreground "brightgreen")))
  "Foreground: Base01 in light mode; Base1 in dark mode")
(defface solarized-base00-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#839496"))
    (((background light) (class color) (min-colors 88)) (:foreground "#657b83"))
    (((background dark)) (:foreground "brightblue"))
    (t (:foreground "brightyellow")))
  "Foreground: Base00 in light mode; Base0 in dark mode")
(defface solarized-base00-underline
  '((((background dark) (class color) (min-colors 88)) (:underline "#839496"))
    (((background light) (class color) (min-colors 88)) (:underline "#657b83"))
    (((background dark)) (:underline t))
    (t (:underline t)))
  "Underline: Base00 in light mode; Base0 in dark mode")
(defface solarized-base0-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#657b83"))
    (((background light) (class color) (min-colors 88)) (:foreground "#839496"))
    (((background dark)) (:foreground "brightyellow"))
    (t (:foreground "brightblue")))
  "Underline: Base0 in light mode; Base00 in dark mode")
(defface solarized-base1-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#586e75"))
    (((background light) (class color) (min-colors 88)) (:background "#93a1a1"))
    (((background dark)) (:background "brightgreen"))
    (t (:background "brightcyan")))
  "Background: Base1 in light mode; Base01 in dark mode")
(defface solarized-base1-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#586e75"))
    (((background light) (class color) (min-colors 88)) (:foreground "#93a1a1"))
    (((background dark)) (:foreground "brightgreen"))
    (t (:foreground "brightcyan")))
  "Foreground: Base1 in light mode; Base01 in dark mode")
(defface solarized-base2-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#073642"))
    (((background light) (class color) (min-colors 88)) (:background "#eee8d5"))
    (((background dark)) (:background "black"))
    (t (:background "white")))
  "Background: Base2 in light mode; Base02 in dark mode")
(defface solarized-base2-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#073642"))
    (((background light) (class color) (min-colors 88)) (:foreground "#eee8d5"))
    (((background dark)) (:foreground "black"))
    (t (:foreground "white")))
  "Foreground: Base2 in light mode; Base02 in dark mode")
(defface solarized-base3-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#002b36"))
    (((background light) (class color) (min-colors 88)) (:background "#fdf6e3"))
    (((background dark)) (:background "brightblack"))
    (t (:background "brightwhite")))
  "Background: Base3 in light mode; Base03 in dark mode")
(defface solarized-base3-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#002b36"))
    (((background light) (class color) (min-colors 88)) (:foreground "#fdf6e3"))
    (((background dark)) (:foreground "brightblack"))
    (t (:foreground "brightwhite")))
  "Foreground: Base3 in light mode; Base03 in dark mode")

(defface solarized-blue-bg '((((class color) (min-colors 88)) (:background "#268bd2")) (t (:background "blue"))) "Solarized blue background")
(defface solarized-blue-fg '((((class color) (min-colors 88)) (:foreground "#268bd2")) (t (:foreground "blue"))) "Solarized blue foreground")
(defface solarized-cyan-bg '((((class color) (min-colors 88)) (:background "#2aa198")) (t (:background "cyan"))) "Solarized cyan background")
(defface solarized-cyan-fg '((((class color) (min-colors 88)) (:foreground "#2aa198")) (t (:foreground "cyan"))) "Solarized cyan foreground")
(defface solarized-green-bg '((((class color) (min-colors 88)) (:background "#859900")) (t (:background "green"))) "Solarized green background")
(defface solarized-green-fg '((((class color) (min-colors 88)) (:foreground "#859900")) (t (:foreground "green"))) "Solarized green foreground")
(defface solarized-magenta-bg '((((class color) (min-colors 88)) (:background "#d33682")) (t (:background "magenta"))) "Solarized magenta background")
(defface solarized-magenta-fg '((((class color) (min-colors 88)) (:foreground "#d33682")) (t (:foreground "magenta"))) "Solarized magenta foreground")
(defface solarized-orange-fg '((((class color) (min-colors 88)) (:foreground "#cb4b16")) (t (:foreground "brightred"))) "Solarized orange foreground")
(defface solarized-red-bg '((((class color) (min-colors 88)) (:background "#dc322f")) (t (:background "red"))) "Solarized red background")
(defface solarized-red-fg '((((class color) (min-colors 88)) (:foreground "#dc322f")) (t (:foreground "red"))) "Solarized red foreground")
(defface solarized-violet-fg '((((class color) (min-colors 88)) (:foreground "#6c71c4")) (t (:foreground "brightmagenta"))) "Solarized violet foreground")
(defface solarized-yellow-bg '((((class color) (min-colors 88)) (:background "#b58900")) (t (:background "yellow"))) "Solarized yellow background")
(defface solarized-yellow-fg '((((class color) (min-colors 88)) (:foreground "#b58900")) (t (:foreground "yellow"))) "Solarized yellow foreground")

(custom-theme-set-faces
 'solarized
 '(button ((t (:inherit link))))
 '(company-scrollbar-bg ((t (:inherit company-tooltip))))
 '(company-scrollbar-fg ((t (:inherit solarized-base1-bg))))
 '(company-tooltip ((t (:inherit highlight))))
 '(company-tooltip-annotation ((t (:inherit solarized-base1-fg))))
 '(company-tooltip-common ((t (:weight bold))))
 '(company-tooltip-selection ((t (:inherit region))))
 '(css-proprietary-property ((t (:inherit (css-property highlight)))))
 '(css-selector ((t (:weight bold))))
 '(cursor ((t (:inherit (solarized-red-bg)))))
 '(custom-variable-tag ((t (:inherit solarized-blue-fg :weight bold))))
 '(escape-glyph ((t (:inherit solarized-green-fg))))
 '(ediff-current-diff-A ((t (:inherit (solarized-base1-bg solarized-base3-fg)))))
 '(ediff-current-diff-B ((t (:inherit (solarized-base1-bg solarized-base3-fg)))))
 '(ediff-even-diff-A ((t (:inherit solarized-base2-bg))))
 '(ediff-even-diff-B ((t (:inherit solarized-base2-bg))))
 '(ediff-fine-diff-A ((t (:inherit solarized-magenta-bg))))
 '(ediff-fine-diff-B ((t (:inherit solarized-cyan-bg))))
 '(ediff-odd-diff-A ((t (:inherit solarized-base2-bg))))
 '(ediff-odd-diff-B ((t (:inherit solarized-base2-bg))))
 '(fixed-pitch ((t (:family "Roboto Mono"))))
 '(font-lock-builtin-face ((t (:inherit solarized-yellow-fg))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:inherit solarized-base1-fg :slant italic))))
 '(font-lock-constant-face ((t (:inherit solarized-violet-fg))))
 '(font-lock-doc-face ((t (:inherit solarized-base1-fg))))
 '(font-lock-function-name-face ((t (:inherit solarized-magenta-fg))))
 '(font-lock-keyword-face ((t (:inherit solarized-base01-fg :weight bold))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit solarized-red-fg))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:inherit solarized-blue-fg))))
 '(font-lock-type-face ((t (:weight bold))))
 '(font-lock-variable-name-face ((t (:inherit solarized-yellow-fg))))
 '(font-lock-warning-face ((t (:inherit solarized-red-fg :weight bold))))
 '(fringe ((t (:inherit (solarized-base1-fg solarized-base2-bg)))))
 '(header-line ((t (:inherit mode-line))))
 '(highlight ((t (:inherit solarized-base2-bg))))
 '(isearch ((t (:inherit (solarized-magenta-bg solarized-base3-fg)))))
 '(isearch-fail ((t (:inherit (solarized-magenta-bg solarized-base3-fg)))))
 '(ivy-confirm-face ((t (:inherit solarized-cyan-fg))))
 '(ivy-current-match ((t (:inherit isearch))))
 '(ivy-cursor ((t (:inherit cursor))))
 '(ivy-grep-info ((t (:inherit solarized-base1-fg))))
 '(ivy-grep-line-number ((t (:inherit default))))
 '(ivy-match-required-face ((t (:inherit solarized-red-fg))))
 '(ivy-minibuffer-match-face-1 ((t (:inherit highlight))))
 '(ivy-minibuffer-match-face-2 ((t (:inherit ivy-minibuffer-match-face-1 :weight bold))))
 '(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-2))))
 '(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-2))))
 '(ivy-org ((t (:inherit default))))
 '(ivy-remote ((t (:inherit default))))
 '(ivy-subdir ((t (:inherit default))))
 '(ivy-virtual ((t (:inherit default))))
 '(lazy-highlight ((t (:inherit (solarized-base1-bg solarized-base3-fg)))))
 '(link ((t (:inherit solarized-yellow-fg))))
 '(link-visited ((t (:inherit (solarized-green-fg link)))))
 '(linum ((t (:inherit (solarized-base2-bg solarized-base1-fg)))))
 '(magit-bisect-bad ((t (:inherit solarized-red-fg))))
 '(magit-bisect-good ((t (:inherit solarized-green-fg))))
 '(magit-bisect-skip ((t (:inherit solarized-yellow-fg))))
 '(magit-blame-heading ((t (:inherit highlight))))
 '(magit-branch-current ((t (:inherit solarized-blue-fg :weight bold))))
 '(magit-branch-local ((t (:inherit solarized-blue-fg))))
 '(magit-branch-remote ((t (:inherit solarized-green-fg))))
 '(magit-cherry-equivalent ((t (:inherit solarized-magenta-fg))))
 '(magit-cherry-unmatched ((t (:inherit solarized-cyan-fg))))
 '(magit-diff-added ((t (:inherit solarized-green-fg))))
 '(magit-diff-added-highlight ((t (:inherit (magit-diff-added highlight)))))
 '(magit-diff-base ((t (:inherit solarized-yellow-fg))))
 '(magit-diff-base-highlight ((t (:inherit (magit-diff-base highlight)))))
 '(magit-diff-context ((t (:inherit default))))
 '(magit-diff-context-highlight ((t (:inherit (magit-diff-context highlight)))))
 '(magit-diff-hunk-heading ((t (:inherit highlight))))
 '(magit-diff-hunk-heading-highlight ((t (:inherit magit-diff-hunk-heading :weight bold))))
 '(magit-diff-hunk-heading-selection ((t (:inherit (magit-duff-hunk-heading solarized-red-fg)))))
 '(magit-diff-lines-heading ((t (:inherit (solarized-yellow-bg solarized-base3-fg)))))
 '(magit-diff-removed ((t (:inherit solarized-red-fg))))
 '(magit-diff-removed-highlight ((t (:inherit (magit-diff-removed highlight)))))
 '(magit-diffstat-added ((t (:inherit solarized-green-fg))))
 '(magit-diffstat-removed ((t (:inherit solarized-red-fg))))
 '(magit-dimmed ((t (:inherit font-lock-comment-face))))
 '(magit-hash ((t (:inherit default))))
 '(magit-log-author ((t (:weight bold))))
 '(magit-log-date ((t (:inherit solarized-blue-fg))))
 '(magit-log-graph ((t (:inherit font-lock-comment-face))))
 '(magit-process-ng ((t (:inherit solarized-red-fg))))
 '(magit-process-ok ((t (:inherit solarized-green-fg))))
 '(magit-reflog-amend ((t (:inherit solarized-magenta-fg))))
 '(magit-reflog-checkout ((t (:inherit solarized-blue-fg))))
 '(magit-reflog-cherry-pick ((t (:inherit solarized-green-fg))))
 '(magit-reflog-commit ((t (:inherit solarized-green-fg))))
 '(magit-reflog-merge ((t (:inherit solarized-green-fg))))
 '(magit-reflog-other ((t (:inherit solarized-cyan-fg))))
 '(magit-reflog-rebase ((t (:inherit solarized-magenta-fg))))
 '(magit-reflog-remote ((t (:inherit solarized-cyan-fg))))
 '(magit-reflog-reset ((t (:inherit solarized-red-fg))))
 '(magit-refname ((t (:inherit font-lock-comment-face))))
 '(magit-section-heading ((t (:inherit solarized-red-fg :weight bold))))
 '(magit-section-heading-selection ((t (:inherit magit-section-heading))))
 '(magit-section-highlight ((t (:inherit highlight))))
 '(magit-sequence-drop ((t (:inherit solarized-red-fg))))
 '(magit-sequence-head ((t (:inherit solarized-blue-fg))))
 '(magit-sequence-part ((t (:inherit solarized-yellow-fg))))
 '(magit-sequence-stop ((t (:inherit solarized-green-fg))))
 '(magit-signature-bad ((t (:inherit solarized-red-fg))))
 '(magit-signature-error ((t (:inherit solarized-red-fg))))
 '(magit-signature-expired ((t (:inherit solarized-orange-fg))))
 '(magit-signature-good ((t (:inherit solarized-green-fg))))
 '(magit-signature-revoked ((t (:inherit solarized-magenta-fg))))
 '(magit-signature-untrusted ((t (:inherit solarized-cyan-fg))))
 '(magit-tag ((t (:inherit solarized-yellow-fg))))
 '(markdown-code-face ((t (:inherit highlight))))
 '(markdown-header-face ((t (:weight bold))))
 '(markdown-inline-code-face ((t (:inherit highlight))))
 '(markdown-language-info-face ((t (:inherit default))))
 '(markdown-language-keyword-face ((t (:inherit solarized-yellow-fg))))
 '(markdown-markup-face ((t (:inherit solarized-yellow-fg))))
 '(markdown-pre-face ((t (:inherit highlight))))
 '(match ((t (:inherit (solarized-cyan-bg solarized-base1-fg)))))
 '(minibuffer-prompt ((t (:inherit solarized-blue-fg))))
 '(mode-line ((t (:inherit (solarized-base01-fg solarized-base2-bg)))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:underline t))))
 '(mode-line-inactive ((t (:inherit (solarized-base1-fg mode-line)))))
 '(neo-btn-face ((t (:inherit solarized-blue-fg))))
 '(neo-dir-link-face ((t (:inherit solarized-blue-fg))))
 '(neo-expand-btn-face ((t (:inherit solarized-blue-fg))))
 '(neo-file-link-face ((t nil)))
 '(neo-header-face ((t (:inherit solarized-yellow-fg))))
 '(neo-root-dir-face ((t (:inherit solarized-magenta-fg))))
 '(next-error ((t (:inherit (region)))))
 '(org-agenda-date ((t (:weight bold))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :slant italic))))
 '(org-agenda-done ((t (:inherit solarized-base0-fg))))
 '(org-agenda-structure ((t (:inherit solarized-yellow-fg))))
 '(org-code ((t (:inherit solarized-base2-bg :family "Roboto Mono"))))
 '(org-date ((t (:inherit solarized-base1-fg :weight bold :underline t))))
 '(org-date-selected ((t (:inherit (solarized-red-bg solarized-base3-fg)))))
 '(org-document-title ((t (:inherit solarized-base01-fg :weight bold))))
 '(org-done ((t (:inherit solarized-cyan-fg :weight bold))))
 '(org-drawer ((t (:inherit solarized-base1-fg))))
 '(org-headline-done ((t (:inherit outline-2))))
 '(org-journal-calendar-entry-face ((t (:inherit solarized-base02-fg :weight bold))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :slant normal))))
 '(org-priority ((t (:inherit org-todo))))
 '(org-property-value ((t (:inherit org-drawer :weight bold))))
 '(org-scheduled ((t nil)))
 '(org-scheduled-previously ((t (:inherit solarized-red-fg))))
 '(org-scheduled-today ((t nil)))
 '(org-special-keyword ((t (:inherit solarized-base1-fg))))
 '(org-table ((t (:inherit highlight :family "Roboto Mono"))))
 '(org-tag ((t (:inherit solarized-violet-fg :weight bold))))
 '(org-todo ((t (:inherit solarized-magenta-fg :weight bold))))
 '(org-verbatim ((t (:inherit org-code))))
 '(outline-1 ((t (:inherit solarized-blue-fg :weight bold))))
 '(outline-2 ((t (:inherit solarized-base01-fg :weight bold))))
 '(outline-3 ((t (:inherit outline-2))))
 '(outline-4 ((t (:inherit outline-3))))
 '(outline-5 ((t (:inherit outline-4))))
 '(outline-6 ((t (:inherit outline-5))))
 '(query-replace ((t (:inherit (isearch)))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit solarized-magenta-fg))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit solarized-blue-fg))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit solarized-yellow-fg))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit solarized-cyan-fg))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit solarized-orange-fg))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit solarized-violet-fg))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit solarized-green-fg))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit solarized-red-fg))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit solarized-base01-fg))))
 '(region ((t (:inherit (solarized-magenta-bg solarized-base3-fg)))))
 '(secondary-selection ((t (:inherit (solarized-blue-bg solarized-base3-fg)))))
 '(sh-quoted-exec ((default (:inherit (font-lock-function-name-face)))))
 '(shadow ((t (:inherit solarized-base0-fg))))
 '(show-paren-match ((t (:inherit solarized-base1-bg))))
 '(show-paren-mismatch ((t (:inherit solarized-red-bg))))
 '(swiper-match-face-1 ((t (:inherit isearch))))
 '(swiper-match-face-2 ((t (:inherit swiper-match-face-1 :weight bold))))
 '(swiper-match-face-3 ((t (:inherit swiper-match-face-2))))
 '(swiper-match-face-4 ((t (:inherit swiper-match-face-2))))
 '(tooltip ((t (:inherit (solarized-base2-bg solarized-base01-fg)))))
 '(trailing-whitespace ((t (:inherit (solarized-yellow-bg solarized-base3-fg)))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(vertical-border ((((class color) (min-colors 88)) (:inherit (solarized-base3-bg mode-line))) (t (:inherit (solarized-base2-fg solarized-base2-bg)))))
 '(warning ((t (:inherit solarized-red-fg :weight bold))))
 '(web-mode-constant-face ((t (:inherit solarized-magenta-fg))))
 '(web-mode-doctype-face ((t (:inherit solarized-orange-fg))))
 '(web-mode-html-attr-name-face ((t (:inherit solarized-cyan-fg))))
 '(web-mode-html-attr-value-face ((t (:inherit solarized-blue-fg))))
 '(web-mode-html-tag-bracket-face ((t (:inherit solarized-yellow-fg))))
 '(web-mode-html-tag-face ((t (:inherit solarized-yellow-fg))))
 '(web-mode-json-key-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-json-string-face ((t (:inherit solarized-yellow-fg))))
 '(which-key-command-description-face ((t (:inherit default))))
 '(which-key-group-description-face ((t (:inherit default))))
 '(which-key-key-face ((t (:inherit font-lock-keyword-face))))
 '(whitespace-big-indent ((t (:inherit whitespace-space))))
 '(whitespace-empty ((t (:inherit whitespace-space))))
 '(whitespace-indentation ((t (:inherit whitespace-space))))
 '(whitespace-line ((t nil)))
 '(whitespace-newline ((t (:inherit solarized-base2-fg))))
 '(whitespace-space ((t (:inherit solarized-base1-fg))))
 '(whitespace-hspace ((t (:inherit whitespace-space))))
 '(whitespace-tab ((t (:inherit whitespace-space))))
 '(whitespace-space-after-tab ((t (:inherit whitespace-space))))
 '(whitespace-space-before-tab ((t (:inherit trailing-whitespace))))
 '(whitespace-trailing ((t (:inherit trailing-whitespace))))
 '(default ((((background dark) (class color) (min-colors 88)) (:background "#002b36" :foreground "#839496" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "Roboto Mono"))
            (((background light) (class color) (min-colors 88)) (:background "#fdf6e3" :foreground "#657b83" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "Roboto Mono"))
            (((background dark)) (:background "brightblack" :foreground "brightblue" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "Roboto Mono"))
            (t (:background "brightwhite" :foreground "brightyellow" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "Roboto Mono")))))

(provide-theme 'solarized)
