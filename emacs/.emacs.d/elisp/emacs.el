(setq make-backup-files nil)

(setq-default cursor-in-non-selected-windows nil)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq-default linum-format "%3d ")
(setq-default scroll-bar-mode nil)
(setq-default tab-width 4)

(electric-indent-mode 1)
(set-fringe-mode 0)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(unless (display-graphic-p)
  (menu-bar-mode -1))

(global-set-key (kbd "C-c e d") 'dark-theme)
(global-set-key (kbd "C-c e l") 'light-theme)
(global-set-key (kbd "C-c e r") 'reload-emacs)
(global-set-key (kbd "C-c e t") 'toggle-theme)
(global-set-key (kbd "C-c h F") 'describe-face)
(global-set-key (kbd "C-c h b") 'describe-bindings)
(global-set-key (kbd "C-c h c") 'describe-char)
(global-set-key (kbd "C-c h f") 'describe-function)
(global-set-key (kbd "C-c h k") 'describe-key)
(global-set-key (kbd "C-c h m") 'describe-mode)
(global-set-key (kbd "C-c h s") 'describe-symbol)
(global-set-key (kbd "C-c h v") 'describe-variable)
(global-set-key (kbd "C-c i l") 'linum-mode)
(global-set-key (kbd "C-c i t") 'toggle-truncate-lines)
(global-set-key (kbd "C-c i v") 'visual-line-mode)
(global-set-key (kbd "C-c r r") 'indent-region)
(global-set-key (kbd "C-c r w") 'whitespace-cleanup)

(defun reload-emacs ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(defun light-theme ()
  "Switch to light theme"
  (interactive)
  (customize-set-variable 'frame-background-mode 'light)
  (load-theme 'solarized t))

(defun dark-theme ()
  "Switch to dark theme"
  (interactive)
  (customize-set-variable 'frame-background-mode 'dark)
  (load-theme 'solarized t))

(defun toggle-theme ()
  "Toggle between light and dark theme"
  (interactive)
  (if (eq frame-background-mode 'dark)
      (light-theme)
    (dark-theme)))
