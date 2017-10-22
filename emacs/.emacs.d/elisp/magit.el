(use-package magit
  :ensure t
  :diminish 'magit-mode
  :config
  (diminish 'magit-auto-revert-mode)
  :bind (("C-c g g" . magit-status)
         ("C-c g l" . magit-log-all)))
