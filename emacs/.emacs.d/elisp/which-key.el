(use-package which-key
  :ensure t 
  :demand
  :diminish 'which-key-mode
  :bind (("C-c h w" . which-key-show-top-level))
  :init
  (setq which-key-add-column-padding 1)
  (setq which-key-max-description-length 32)
  (setq which-key-separator " ")
  :config
  (which-key-mode)
  (which-key-add-key-based-replacements "C-c b" "buffer")
  (which-key-add-key-based-replacements "C-c c" "mode")
  (which-key-add-key-based-replacements "C-c d" "directory")
  (which-key-add-key-based-replacements "C-c e" "web")
  (which-key-add-key-based-replacements "C-c h" "help")
  (which-key-add-key-based-replacements "C-c i" "info")
  (which-key-add-key-based-replacements "C-c m" "bookmark")
  (which-key-add-key-based-replacements "C-c o" "org")
  (which-key-add-key-based-replacements "C-c p" "project")
  (which-key-add-key-based-replacements "C-c q" "macro")
  (which-key-add-key-based-replacements "C-c r" "region")
  (which-key-add-key-based-replacements "C-c w" "window")
  (which-key-add-key-based-replacements "C-c y" "yank"))
