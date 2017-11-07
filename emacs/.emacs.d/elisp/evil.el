(use-package evil
  :ensure t
  :demand
  :diminish 'undo-tree-mode
  :bind (:map evil-insert-state-map
              ("TAB" . self-insert-command)
              :map evil-motion-state-map
              ("RET" . nil)
              ("SPC" . nil)
              :map evil-normal-state-map
              ("RET" . evil-ret))
  :init
  (setq evil-want-C-i-jump nil) ; Enable TAB for org mode
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode))
