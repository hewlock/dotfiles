(use-package neotree
  :ensure t
  :init (progn
    (setq neo-show-hidden-files t)
    (setq neo-smart-open nil)
    (setq neo-theme 'arrow)
    (setq neo-window-width 40)
    (setq projectile-switch-project-action 'neotree-projectile-action)))
