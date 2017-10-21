(use-package ivy
  :ensure t
  :diminish 'ivy-mode
  :init
  (setq ivy-count-format "%d/%d ")
  (setq ivy-height 15)
  (setq projectile-completion-system 'ivy)
  :config
  (ivy-mode 1))

(use-package ivy-hydra
  :ensure t)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))

(use-package counsel
  :ensure t
  :bind (("C-c f F" . counsel-git)
         ("C-c f S" . counsel-git-grep)
         ("C-c f l" . counsel-git-log)
         ("C-c f r" . counsel-recentf)
         ("C-c f y" . counsel-yank-pop)
         ("C-c h F" . counsel-faces)))

(use-package counsel-projectile
  :ensure t
  :bind (("C-c f f" . counsel-projectile)
         ("C-c f p" . counsel-projectile-switch-project)
         ("C-c f s" . counsel-projectile-ag)))
