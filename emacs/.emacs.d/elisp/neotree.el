(use-package neotree
  :ensure t
  :bind (("C-c t f" . neotree-find)
         ("C-c t h" . neotree-hidden-file-toggle)
         ("C-c t r" . neotree-refresh)
         ("C-c t s" . neotree-stretch-toggle)
         ("C-c t t" . mrm/neotree-toggle-project))
  :init
  (setq neo-persist-show nil)
  (setq neo-show-hidden-files t)
  (setq neo-smart-open nil)
  (setq neo-theme 'arrow)
  (setq neo-window-width 40)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  :config
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "o") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-change-root)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (defun mrm/neotree-toggle-project ()
    "Toggle show the NeoTree window."
    (interactive)
    (if (neo-global--window-exists-p)
        (neotree-hide)
      (neotree-dir (projectile-project-root)))))
