(setq-default scroll-bar-mode nil)

(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq auto-save-visited-file-name t)
(setq create-lockfiles nil)
(setq evil-want-C-i-jump nil) ; Enable TAB for org mode
(setq evil-want-C-u-scroll t)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
(setq helm-split-window-in-side-p t)
(setq linum-format "%3d ")
(setq make-backup-files nil)
(setq neo-show-hidden-files t)
(setq neo-smart-open nil)
(setq neo-theme 'arrow)
(setq neo-window-width 40)
(setq projectile-completion-system 'helm)
(setq projectile-require-project-root nil)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq truncate-lines nil)

(electric-indent-mode 1)
(set-fringe-mode 0)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(if (not (display-graphic-p)) (menu-bar-mode -1))

(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header