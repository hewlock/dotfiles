(use-package which-key
  :ensure t 
  :diminish 'which-key-mode
  :bind (("C-c h w" . which-key-show-top-level))
  :init
  (setq which-key-add-column-padding 1)
  (setq which-key-max-description-length 32)
  (setq which-key-separator " ")
  :config
  (which-key-mode)
  (which-key-add-key-based-replacements "C-c e" "emacs")
  (which-key-add-key-based-replacements "C-c f" "filter")
  (which-key-add-key-based-replacements "C-c h" "help")
  (which-key-add-key-based-replacements "C-c i" "info")
  (which-key-add-key-based-replacements "C-c o" "org")
  (which-key-add-key-based-replacements "C-c r" "refactor")
  (which-key-add-key-based-replacements "C-c t" "tree"))
