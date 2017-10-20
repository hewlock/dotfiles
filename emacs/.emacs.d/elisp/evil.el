(use-package evil
  :ensure t
  :demand
  :bind (:map evil-insert-state-map
              ("TAB" . self-insert-command))
  :diminish 'undo-tree-mode
  :init 
  (setq evil-want-C-i-jump nil) ; Enable TAB for org mode
  (setq evil-want-C-u-scroll t)
  :config 
  (evil-mode))
