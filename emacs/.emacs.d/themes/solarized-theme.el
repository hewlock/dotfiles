(deftheme solarized
  "Created 2017-10-17.")

(defface solarized-base0-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#002b36"))
    (((background light) (class color) (min-colors 88)) (:background "#fdf6e3"))
    (((background dark)) (:background "brightblack"))
    (t (:background "brightwhite")))
  "Darkest/lightest background tone")
(defface solarized-base0-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#002b36"))
    (((background light) (class color) (min-colors 88)) (:foreground "#fdf6e3"))
    (((background dark)) (:foreground "brightblack"))
    (t (:foreground "brightwhite")))
  "Darkest/lightest foreground tone")
(defface solarized-base1-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#073642"))
    (((background light) (class color) (min-colors 88)) (:background "#eee8d5"))
    (((background dark)) (:background "black"))
    (t (:background "white")))
  "Least contrasting background tone")
(defface solarized-base3-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#fdf6e3"))
    (((background light) (class color) (min-colors 88)) (:background "#002b36"))
    (((background dark)) (:background "brightwhite"))
    (t (:background "brightblack")))
  "Most contrasting background tone")

(defface solarized-content0-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#586e75"))
    (((background light) (class color) (min-colors 88)) (:foreground "#93a1a1"))
    (((background dark)) (:foreground "brightgreen"))
    (t (:foreground "brightcyan")))
  "Least contrasting content tone")
(defface solarized-content0-bg
  '((((background dark) (class color) (min-colors 88)) (:background "#586e75"))
    (((background light) (class color) (min-colors 88)) (:background "#93a1a1"))
    (((background dark)) (:background "brightgreen"))
    (t (:background "brightcyan")))
  "Least contrasting content tone")
(defface solarized-content0-box
  '((((background dark) (class color) (min-colors 88)) (:box (:line-width 1 :color "#586e75")))
    (((background light) (class color) (min-colors 88)) (:box (:line-width 1 :color "#93a1a1"))))
  "Least contrasting content tone")
(defface solarized-content1-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#657b83"))
    (((background light) (class color) (min-colors 88)) (:foreground "#839496"))
    (((background dark)) (:foreground "brightyellow"))
    (t (:foreground "brightblue")))
  "Second least contrasting content tone")
(defface solarized-content2-underline
  '((((background dark) (class color) (min-colors 88)) (:underline "#839496"))
    (((background light) (class color) (min-colors 88)) (:underline "#657b83"))
    (((background dark)) (:underline t))
    (t (:underline t)))
  "Second least contrasting content tone")
(defface solarized-content3-fg
  '((((background dark) (class color) (min-colors 88)) (:foreground "#93a1a1"))
    (((background light) (class color) (min-colors 88)) (:foreground "#586e75"))
    (((background dark)) (:foreground "brightcyan"))
    (t (:foreground "brightgreen")))
  "Least contrasting content tone")

(defface solarized-blue-bg '((((class color) (min-colors 88)) (:background "#268bd2")) (t (:background "blue"))) "Solarized blue background")
(defface solarized-blue-fg '((((class color) (min-colors 88)) (:foreground "#268bd2")) (t (:foreground "blue"))) "Solarized blue foreground")
(defface solarized-cyan-bg '((((class color) (min-colors 88)) (:background "#2aa198")) (t (:background "cyan"))) "Solarized cyan background")
(defface solarized-cyan-fg '((((class color) (min-colors 88)) (:foreground "#2aa198")) (t (:foreground "cyan"))) "Solarized cyan foreground")
(defface solarized-green-fg '((((class color) (min-colors 88)) (:foreground "#859900")) (t (:foreground "green"))) "Solarized green foreground")
(defface solarized-magenta-bg '((((class color) (min-colors 88)) (:background "#d33682")) (t (:background "magenta"))) "Solarized magenta background")
(defface solarized-magenta-fg '((((class color) (min-colors 88)) (:foreground "#d33682")) (t (:foreground "magenta"))) "Solarized magenta foreground")
(defface solarized-orange-fg '((((class color) (min-colors 88)) (:foreground "#cb4b16")) (t (:foreground "brightred"))) "Solarized orange foreground")
(defface solarized-red-fg '((((class color) (min-colors 88)) (:foreground "#dc322f")) (t (:foreground "red"))) "Solarized red foreground")
(defface solarized-red-bg '((((class color) (min-colors 88)) (:background "#dc322f")) (t (:background "red"))) "Solarized red background")
(defface solarized-violet-fg '((((class color) (min-colors 88)) (:foreground "#6c71c4")) (t (:foreground "brightmagenta"))) "Solarized violet foreground")
(defface solarized-yellow-fg '((((class color) (min-colors 88)) (:foreground "#b58900")) (t (:foreground "yellow"))) "Solarized yellow foreground")

(custom-theme-set-faces
 'solarized
 '(button ((t (:inherit link))))
 '(cursor ((t (:inherit solarized-base3-bg))))
 '(custom-variable-tag ((t (:inherit solarized-blue-fg :weight bold))))
 '(escape-glyph ((t (:inherit solarized-green-fg))))
 '(fixed-pitch ((t (:family "monospace"))))
 '(font-lock-builtin-face ((t (:inherit solarized-yellow-fg))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:inherit solarized-content0-fg))))
 '(font-lock-constant-face ((t (:inherit solarized-violet-fg))))
 '(font-lock-doc-face ((t (:inherit solarized-content0-fg))))
 '(font-lock-function-name-face ((t (:inherit solarized-magenta-fg))))
 '(font-lock-keyword-face ((t (:weight bold))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit solarized-red-fg))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:inherit solarized-blue-fg))))
 '(font-lock-type-face ((t (:slant italic))))
 '(font-lock-variable-name-face ((t (:inherit solarized-yellow-fg))))
 '(font-lock-warning-face ((t (:inherit solarized-red-fg :weight bold))))
 '(fringe ((t (:inherit (solarized-content0-fg solarized-base1-bg)))))
 '(header-line ((t (:inherit mode-line))))
 '(helm-M-x-key ((t (:inherit link))))
 '(helm-buffer-not-saved ((t (:inherit solarized-red-fg))))
 '(helm-buffer-process ((t (:inherit solarized-orange-fg))))
 '(helm-candidate-number ((t (:weight bold))))
 '(helm-match ((t (:inherit solarized-red-fg))))
 '(helm-prefarg ((t (:inherit solarized-red-fg))))
 '(helm-selection ((t (:inherit (solarized-magenta-bg solarized-base0-fg)))))
 '(helm-source-header ((t (:inherit (solarized-yellow-fg solarized-base1-bg) :height 1.3))))
 '(highlight ((t (:inherit solarized-base1-bg))))
 '(isearch ((t (:inherit (solarized-magenta-bg solarized-base0-fg)))))
 '(isearch-fail ((t (:inherit (solarized-magenta-bg solarized-base0-fg)))))
 '(lazy-highlight ((t (:inherit (solarized-content0-bg solarized-base0-fg)))))
 '(link ((t (:inherit solarized-yellow-fg :underline t))))
 '(link-visited ((t (:inherit (solarized-green-fg link)))))
 '(linum ((t (:inherit (solarized-base1-bg solarized-content0-fg)))))
 '(match ((t (:inherit (solarized-cyan-bg solarized-content0-fg)))))
 '(minibuffer-prompt ((t (:inherit solarized-blue-fg))))
 '(mode-line ((((class color) (min-colors 88)) (:inherit (solarized-base1-bg solarized-content0-box))) (t (:inherit solarized-base1-bg))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:underline t))))
 '(mode-line-inactive ((((class color) (min-colors 88)) (:inherit (solarized-base0-bg mode-line))) (t (:inherit (solarized-content0-fg mode-line)))))
 '(neo-dir-link-face ((t (:inherit solarized-blue-fg))))
 '(neo-file-link-face ((t nil)))
 '(neo-header-face ((t (:inherit solarized-yellow-fg))))
 '(neo-root-dir-face ((t (:inherit solarized-magenta-fg))))
 '(next-error ((t (:inherit (region)))))
 '(org-agenda-date ((t (:weight bold))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :slant italic))))
 '(org-agenda-done ((t (:inherit solarized-content1-fg))))
 '(org-agenda-structure ((t (:inherit solarized-yellow-fg))))
 '(org-code ((t (:inherit solarized-base1-bg :family "monospace"))))
 '(org-date ((t (:inherit solarized-blue-fg :underline t))))
 '(org-date-selected ((t (:inherit (solarized-red-bg solarized-base0-fg)))))
 '(org-done ((t (:inherit solarized-cyan-fg :weight bold))))
 '(org-priority ((t (:inherit org-todo))))
 '(org-property-value ((t (:inherit solarized-blue-fg))))
 '(org-scheduled ((t nil)))
 '(org-scheduled-previously ((t (:inherit solarized-red-fg))))
 '(org-scheduled-today ((t nil)))
 '(org-special-keyword ((t (:inherit solarized-violet-fg))))
 '(org-tag ((t (:inherit solarized-violet-fg :weight bold))))
 '(org-todo ((t (:inherit solarized-magenta-fg :weight bold))))
 '(outline-1 ((t (:inherit (solarized-yellow-fg solarized-content2-underline) :height 1.6))))
 '(outline-2 ((t (:weight bold))))
 '(outline-3 ((t (:inherit outline-2))))
 '(outline-4 ((t (:inherit outline-3))))
 '(outline-5 ((t (:inherit outline-4))))
 '(outline-6 ((t (:inherit outline-5))))
 '(query-replace ((t (:inherit (isearch)))))
 '(region ((t (:inherit (solarized-magenta-bg solarized-base0-fg)))))
 '(secondary-selection ((t (:inherit (solarized-blue-bg solarized-base0-fg)))))
 '(sh-quoted-exec ((default (:inherit (font-lock-function-name-face)))))
 '(shadow ((t (:inherit solarized-content1-fg))))
 '(tooltip ((t (:inherit (solarized-base1-bg solarized-content3-fg)))))
 '(trailing-whitespace ((t (:inherit (solarized-red-bg solarized-base0-fg)))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(warning ((t (:inherit solarized-red-fg :weight bold))))
 '(whitespace-indentation ((t (:inherit whitespace-line))))
 '(whitespace-line ((t (:inherit highlight))))
 '(whitespace-newline ((t (:inherit whitespace-space))))
 '(whitespace-space ((t (:inherit font-lock-comment-face))))
 '(whitespace-space-after-tab ((t (:inherit whitespace-line))))
 '(whitespace-space-before-tab ((t (:inherit whitespace-line))))
 '(whitespace-trailing ((t (:inherit font-lock-warning-face))))
 '(default ((((background dark) (class color) (min-colors 88)) (:background "#002b36" :foreground "#839496" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Roboto Mono for Powerline"))
            (((background light) (class color) (min-colors 88)) (:background "#fdf6e3" :foreground "#657b83" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Roboto Mono for Powerline"))
            (((background dark)) (:background "brightblack" :foreground "brightblue" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Roboto Mono for Powerline"))
            (t (:background "brightwhite" :foreground "brightyellow" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Roboto Mono for Powerline")))))

(provide-theme 'solarized)
