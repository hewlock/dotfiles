(use-package bookmark
  :bind (("C-c m l" . bookmark-bmenu-list)
         ("C-c m m" . bookmark-set))
  :init
  (evil-set-initial-state 'bookmark-bmenu-mode 'motion))
