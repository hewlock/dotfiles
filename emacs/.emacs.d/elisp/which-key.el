(use-package which-key
  :ensure t 
  :diminish 'which-key-mode
  :config (progn
    (which-key-mode)
    (defun which-key-help (prefix description)
      (which-key-add-key-based-replacements (concat "C-c " prefix) description))
    (which-key-help "e" "emacs")
    (which-key-help "h" "help")
    (which-key-help "i" "info")
    (which-key-help "o" "org")
    (which-key-help "r" "refactor")
    (which-key-help "t" "tree")))
