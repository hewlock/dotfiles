(use-package whitespace
  :ensure t 
  :bind (("C-c i w" . whitespace-mode)
         ("C-c r w" . whitespace-cleanup))
  :diminish 'whitespace-mode)
