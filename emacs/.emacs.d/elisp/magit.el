(use-package magit
  :ensure t
  :diminish 'magit-mode
  :config
  (advice-add 'magit-blame-mode :before 'evil-emacs-state)
  (advice-add 'magit-blame-quit :after 'evil-normal-state)
  (diminish 'auto-revert-mode)
  (diminish 'global-auto-revert-mode)
  (setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
  (setq magit-bury-buffer-function (lambda(&optional kill-buffer)
                                     (interactive)
                                     (magit-restore-window-configuration t)))
  :bind (("C-c g b" . magit-blame)
         ("C-c g g" . magit-status)
         ("C-c g l" . magit-log-all)))
