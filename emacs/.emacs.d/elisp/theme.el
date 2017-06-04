(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header
