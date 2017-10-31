(use-package eww
  :ensure t
  :bind (("C-c e s" . eww)
         ("C-c e b" . eww-list-bookmarks)
         ("C-c e S" . eww-reload))
  :init
  (evil-set-initial-state 'eww-bookmark-mode 'motion)
  (evil-set-initial-state 'eww-mode 'motion))
