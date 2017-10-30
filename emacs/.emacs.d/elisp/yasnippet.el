(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :config
  (evil-define-key 'insert yas-minor-mode-map (kbd "C-p") 'yas-expand)
  (yas-global-mode 1))
