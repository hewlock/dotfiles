(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
(setq helm-split-window-in-side-p t)
(setq projectile-completion-system 'helm)

(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header
