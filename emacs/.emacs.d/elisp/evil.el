(use-package evil
  :ensure t
  :demand
  :diminish 'undo-tree-mode
  :bind (:map evil-insert-state-map
              ("TAB" . self-insert-command)
              :map evil-motion-state-map
              ("RET" . nil)
              :map evil-normal-state-map
              ("RET" . evil-ret))
  :init
  (setq evil-want-C-i-jump nil) ; Enable TAB for org mode
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)
  (evil-set-initial-state 'eww-bookmark-mode 'motion)
  (evil-set-initial-state 'eww-mode 'motion)
  (evil-set-initial-state 'magit-diff-mode 'motion)
  (evil-set-initial-state 'magit-log-mode 'motion)
  (evil-set-initial-state 'magit-status-mode 'motion))
