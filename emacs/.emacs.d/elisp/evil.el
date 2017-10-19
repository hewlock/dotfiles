(use-package evil
  :ensure t
  :diminish 'undo-tree-mode
  :init (progn
    (setq evil-want-C-i-jump nil) ; Enable TAB for org mode
    (setq evil-want-C-u-scroll t))
  :config (progn
    (evil-mode)))
