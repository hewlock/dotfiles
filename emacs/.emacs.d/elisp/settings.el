(set-default 'truncate-lines t)

(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq auto-save-visited-file-name t)
(setq create-lockfiles nil)
(setq default-tab-width 4)
(setq evil-want-C-i-jump nil) ; Enable TAB for org mode
(setq evil-want-C-u-scroll t)
(setq frame-background-mode 'dark)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
(setq helm-split-window-in-side-p t)
(setq linum-format "%3d ")
(setq make-backup-files nil)
(setq neo-show-hidden-files t)
(setq neo-smart-open nil)
(setq neo-theme 'arrow)
(setq neo-window-width 40)
(setq org-agenda-files '("~/SpiderOak Backup/Org"))
(setq org-log-done t)
(setq org-startup-folded 'showall)
(setq projectile-completion-system 'helm)
(setq projectile-require-project-root nil)
(setq projectile-switch-project-action 'neotree-projectile-action)

(electric-indent-mode 1)
(global-linum-mode t)

(if (not (display-graphic-p)) (menu-bar-mode -1))