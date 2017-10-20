(use-package which-key
  :ensure t 
  :diminish 'which-key-mode
  :config (progn
    (which-key-mode)
    (defun which-key-help (prefix description)
      (which-key-add-key-based-replacements (concat "C-c " prefix) description))
    (which-key-help "b" "buffer")
    (which-key-help "e" "emacs")
    (which-key-help "f" "file")
    (which-key-help "h" "help")
    (which-key-help "i" "whitespace")
    (which-key-help "j" "jump")
    (which-key-help "m" "mark ring")
    (which-key-help "o" "org")
    (which-key-help "q" "macro ring")
    (which-key-help "s" "search")
    (which-key-help "t" "tree")
    (which-key-help "y" "kill ring")))
