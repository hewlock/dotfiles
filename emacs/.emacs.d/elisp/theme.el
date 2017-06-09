(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header

;; Use variable width font faces in current buffer
(defun my-buffer-face-mode-variable ()
    "Set font to a variable width (proportional) fonts in current buffer"
    (interactive)
    (setq buffer-face-mode-face '(:foreground "Gray50"))
    (buffer-face-mode))

(add-hook 'org-mode-hook 'my-buffer-face-mode-variable)


