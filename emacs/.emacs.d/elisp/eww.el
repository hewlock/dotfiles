(use-package eww
  :bind (("C-c e o" . eww)
         ("C-c e f" . eww-list-bookmarks))
  :init
  (evil-set-initial-state 'eww-bookmark-mode 'motion)
  (evil-set-initial-state 'eww-mode 'motion))
