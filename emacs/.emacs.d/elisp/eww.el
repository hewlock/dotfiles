(use-package eww
  :bind (("C-c w o" . eww)
         ("C-c w l" . eww-list-bookmarks))
  :init
  (evil-set-initial-state 'eww-bookmark-mode 'motion)
  (evil-set-initial-state 'eww-mode 'motion))
