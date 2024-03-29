(use-package magit
  :ensure t
  :diminish 'magit-mode
  :bind (("C-c b b" . magit-blame)
         ("C-c b d" . magit-diff-buffer-file)
         ("C-c b g" . magit-file-dispatch)
         ("C-c b l" . magit-log-buffer-file)
         ("C-c p l" . magit-log-all)
         ("C-c p u" . mrm/magit-status-project))
  :init
  (setq magit-bury-buffer-function (lambda(&optional kill-buffer) (interactive) (magit-restore-window-configuration t)))
  (setq ediff-split-window-function 'split-window-horizontally)
  (setq magit-ediff-dwim-show-on-hunks t)
  (evil-set-initial-state 'magit-diff-mode 'emacs)
  (evil-set-initial-state 'magit-log-mode 'emacs)
  (evil-set-initial-state 'magit-status-mode 'emacs)
  :config
  (advice-add 'magit-blame-mode :before 'evil-emacs-state)
  (advice-add 'magit-blame-quit :after 'evil-normal-state)
  (diminish 'auto-revert-mode)
  (diminish 'global-auto-revert-mode)
  (defun mrm/magit-status-project ()
    "Show Magit status on the current directory."
    (interactive)
    (magit-status-internal (mrm/project-directory))))
