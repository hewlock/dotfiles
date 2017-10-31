(use-package magit
  :ensure t
  :diminish 'magit-mode
  :init
  (setq magit-bury-buffer-function (lambda(&optional kill-buffer) (interactive) (magit-restore-window-configuration t)))
  (setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
  (evil-set-initial-state 'magit-diff-mode 'motion)
  (evil-set-initial-state 'magit-log-mode 'motion)
  (evil-set-initial-state 'magit-status-mode 'motion)
  :config
  (advice-add 'magit-blame-mode :before 'evil-emacs-state)
  (advice-add 'magit-blame-quit :after 'evil-normal-state)
  (diminish 'auto-revert-mode)
  (diminish 'global-auto-revert-mode)
  :bind (("C-c g b" . magit-blame)
         ("C-c g g" . magit-status)
         ("C-c g l" . magit-log-all)))
