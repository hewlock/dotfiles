(use-package ivy
  :ensure t
  :demand
  :diminish 'ivy-mode
  :bind (:map ivy-minibuffer-map
              ("C-a" . ivy-beginning-of-buffer)
              ("C-d" . ivy-scroll-up-command)
              ("C-e" . ivy-end-of-buffer)
              ("C-h" . ivy-help)
              ("C-o" . ivy-dispatching-done)
              ("C-u" . ivy-scroll-down-command)
              ("M-o" . hydra-ivy/body))
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
  :bind (("C-c f b" . counsel-bookmark)
         ("C-c f r" . counsel-recentf)
         ("C-c f y" . counsel-yank-pop)
         ("C-c h F" . counsel-faces)))

(use-package counsel-projectile
  :ensure t
  :bind (("C-c f f" . counsel-projectile)
         ("C-c f p" . counsel-projectile-switch-project)
         ("C-c f s" . counsel-projectile-ag)))
