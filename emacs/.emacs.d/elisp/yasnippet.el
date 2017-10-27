(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config
  (evil-define-key 'insert yas-minor-mode-map (kbd "C-k") 'yas-expand)
  (yas-global-mode 1))
