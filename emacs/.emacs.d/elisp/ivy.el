(use-package ivy
  :ensure t
  :demand
  :diminish 'ivy-mode
  :bind (:map ivy-minibuffer-map
              ("C-a" . ivy-beginning-of-buffer)
              ("C-d" . ivy-scroll-up-command)
              ("C-e" . ivy-end-of-buffer)
              ("C-n" . ivy-next-line)
              ("C-o" . ivy-dispatching-done)
              ("C-p" . ivy-previous-line)
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
  :bind (("C-c d s" . counsel-ag)
         ("C-c h F" . counsel-faces)
         ("C-c m f" . counsel-bookmark)
         ("C-c y f" . counsel-yank-pop)))

(use-package counsel-projectile
  :ensure t
  :bind (("C-c p f" . counsel-projectile)
         ("C-c p s" . counsel-projectile-ag)))
