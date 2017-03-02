(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header
(load-theme 'solarized t)

(set-face-attribute 'helm-header nil :foreground "black" :background "brightcyan" :weight 'bold)
(set-face-attribute 'helm-selection nil :foreground "brightred" :background "white" :weight 'bold)
(set-face-attribute 'neo-banner-face nil :foreground "brightcyan")
(set-face-attribute 'neo-dir-link-face nil :foreground "blue")
(set-face-attribute 'neo-expand-btn-face nil :foreground "blue")
(set-face-attribute 'neo-file-link-face nil :foreground "brightcyan")
(set-face-attribute 'neo-header-face nil :foreground "brightcyan")
(set-face-attribute 'neo-root-dir-face nil :foreground "brightcyan")
(set-face-background 'vertical-border "brightgreen")
(set-face-foreground 'vertical-border (face-background 'vertical-border))
