(use-package which-key
  :ensure t 
  :diminish 'which-key-mode
  :config
  (which-key-mode)
  (which-key-add-key-based-replacements "C-c e" "emacs")
  (which-key-add-key-based-replacements "C-c h" "help")
  (which-key-add-key-based-replacements "C-c i" "info")
  (which-key-add-key-based-replacements "C-c o" "org")
  (which-key-add-key-based-replacements "C-c r" "refactor")
  (which-key-add-key-based-replacements "C-c t" "tree"))
