(use-package whitespace
  :ensure t
  :bind (("C-c i w" . whitespace-mode)
         ("C-c b w" . whitespace-cleanup)
         ("C-c r w" . whitespace-cleanup-region))
  :diminish 'whitespace-mode)

(add-hook 'before-save-hook 'whitespace-cleanup)
