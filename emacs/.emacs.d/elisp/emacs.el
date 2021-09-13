(require 'windmove)

(setq make-backup-files nil)

(setq-default auto-save-interval 20)
(setq-default auto-save-timeout 5)
(setq-default cursor-in-non-selected-windows nil)
(setq-default fill-column 80)
(setq-default indent-tabs-mode t)
(setq-default linum-format "%3d ")
(setq-default pulse-flag nil)
(setq-default same-window-regexps '("."))
(setq-default scroll-bar-mode nil)
(setq-default split-width-threshold 120)
(setq-default tab-width 4)

(electric-indent-mode 1)
(set-cursor-color "#dc322f")

; GUI Mode
(when (display-graphic-p)
  (set-fringe-mode 0)
  (toggle-scroll-bar -1)
  (set-frame-parameter (selected-frame) 'alpha '(95 . 95))
  (add-to-list 'default-frame-alist '(alpha . (95 . 95)))
  (tool-bar-mode -1))

; Terminal Mode
(unless (display-graphic-p)
  (menu-bar-mode -1))

(add-hook 'auto-save-hook 'mrm/save-buffer)
(add-hook 'focus-out-hook 'mrm/save-buffer)
(defadvice other-window (before other-window-now activate) (mrm/save-buffer))
(defadvice switch-to-buffer (before save-buffer-now activate) (mrm/save-buffer))
(defadvice windmove-down (before other-window-now activate) (mrm/save-buffer))
(defadvice windmove-left (before other-window-now activate) (mrm/save-buffer))
(defadvice windmove-right (before other-window-now activate) (mrm/save-buffer))
(defadvice windmove-up (before other-window-now activate) (mrm/save-buffer))

(global-set-key (kbd "C-S-c") 'kill-ring-save)
(global-set-key (kbd "C-S-v") 'yank)
(global-set-key (kbd "C-S-x") 'kill-region)
(global-set-key (kbd "C-S-z") 'undo)
(global-set-key (kbd "C-c b p") 'mrm/print-file-name)
(global-set-key (kbd "C-c b q") 'kill-this-buffer)
(global-set-key (kbd "C-c b r") 'mrm/rename-file-and-buffer)
(global-set-key (kbd "C-c d c") 'cd)
(global-set-key (kbd "C-c d p") 'pwd)
(global-set-key (kbd "C-c h U") 'find-function-at-point)
(global-set-key (kbd "C-c h V") 'find-variable-at-point)
(global-set-key (kbd "C-c h b") 'describe-bindings)
(global-set-key (kbd "C-c h c") 'describe-char)
(global-set-key (kbd "C-c h f") 'describe-face)
(global-set-key (kbd "C-c h k") 'describe-key)
(global-set-key (kbd "C-c h m") 'describe-mode)
(global-set-key (kbd "C-c h s") 'describe-symbol)
(global-set-key (kbd "C-c h u") 'describe-function)
(global-set-key (kbd "C-c h v") 'describe-variable)
(global-set-key (kbd "C-c i c") 'toggle-truncate-lines)
(global-set-key (kbd "C-c i e") 'mrm/reload-emacs)
(global-set-key (kbd "C-c i h") 'hl-line-mode)
(global-set-key (kbd "C-c i i") 'mrm/toggle-indent-tabs-mode)
(global-set-key (kbd "C-c i l") 'linum-mode)
(global-set-key (kbd "C-c i o") 'read-only-mode)
(global-set-key (kbd "C-c i p") 'show-paren-mode)
(global-set-key (kbd "C-c i t") 'mrm/toggle-theme)
(global-set-key (kbd "C-c i v") 'visual-line-mode)
(global-set-key (kbd "C-c p c") 'mrm/project-cd)
(global-set-key (kbd "C-c p o") 'mrm/project-find-file)
(global-set-key (kbd "C-c p p") 'mrm/project-pwd)
(global-set-key (kbd "C-c p q") 'mrm/project-quit)
(global-set-key (kbd "C-c r c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c r f") 'mrm/format-region)
(global-set-key (kbd "C-c r w") 'whitespace-cleanup)
(global-set-key (kbd "C-c r x") 'eval-region)
(global-set-key (kbd "C-c w R") 'mrm/rotate-windows-anticlockwise)
(global-set-key (kbd "C-c w b") 'balance-windows)
(global-set-key (kbd "C-c w r") 'mrm/rotate-windows-clockwise)
(global-set-key (kbd "C-c w s") 'mrm/toggle-window-split)

(defun mrm/reload-emacs ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(defun mrm/save-buffer ()
  "Save current buffer."
  (interactive)
  (when buffer-file-name (save-buffer)))

(defun mrm/get-file-as-string (file)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents file)
    (buffer-string)))

(defun mrm/print-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name)))

(defun mrm/rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(defun mrm/light-theme ()
  "Switch to light theme"
  (interactive)
  (customize-set-variable 'frame-background-mode 'light)
  (load-theme 'solarized t))

(defun mrm/dark-theme ()
  "Switch to dark theme"
  (interactive)
  (customize-set-variable 'frame-background-mode 'dark)
  (load-theme 'solarized t))

(defun mrm/toggle-theme ()
  "Toggle between light and dark theme"
  (interactive)
  (if (eq frame-background-mode 'dark)
      (mrm/light-theme)
    (mrm/dark-theme))
  (set-cursor-color "#dc322f"))

(defun mrm/format-region (start end)
  "Reformat selected region"
  (interactive "r")
  (whitespace-cleanup-region start end)
  (if indent-tabs-mode
      (tabify start end)
    (untabify start end))
  (indent-region start end))

(defun mrm/toggle-indent-tabs-mode ()
  "Toggle indent-tabs-mode"
  (interactive)
  (if indent-tabs-mode
      (progn
        (setq-default indent-tabs-mode nil)
        (message "indent-tabs-mode disabled (spaces)"))
    (progn
      (setq-default indent-tabs-mode t)
      (message "indent-tabs-mode enabled (tabs)"))))

(defun mrm/toggle-window-split ()
  "If the frame is split vertically, split it horizontally or vice versa. Assumes that the frame is only split into two."
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(defun mrm/rotate-windows (arg)
  "Rotate windows"
  (interactive)
  (if (not (> (count-windows) 1))
      (message "You can't rotate a single window!")
    (let* ((rotate-times (prefix-numeric-value arg))
           (direction (if (or (< rotate-times 0) (equal arg '(4)))
                          'reverse 'identity)))
      (dotimes (_ (abs rotate-times))
        (dotimes (i (- (count-windows) 1))
          (let* ((w1 (elt (funcall direction (window-list)) i))
                 (w2 (elt (funcall direction (window-list)) (+ i 1)))
                 (b1 (window-buffer w1))
                 (b2 (window-buffer w2))
                 (s1 (window-start w1))
                 (s2 (window-start w2))
                 (p1 (window-point w1))
                 (p2 (window-point w2)))
            (set-window-buffer-start-and-point w1 b2 s2 p2)
            (set-window-buffer-start-and-point w2 b1 s1 p1)))))))

(defun mrm/rotate-windows-clockwise ()
  "Rotate windows clockwise"
  (interactive)
  (mrm/rotate-windows -1))

(defun mrm/rotate-windows-anticlockwise ()
  "Rotate windows clockwise"
  (interactive)
  (mrm/rotate-windows 1))
