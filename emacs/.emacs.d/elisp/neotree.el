(use-package neotree
  :ensure t
  :bind (("C-c b t" . neotree-find)
         ("C-c d t" . mrm/directory-tree)
         ("C-c p t" . mrm/project-tree)
         :map neotree-mode-map
         ("RET" . mrm/neotree-enter-hide)
         ("SPC" . neotree-quick-look)
         ("o" . neotree-enter)
         ("q" . neotree-hide)
         ("c" . neotree-change-root))
  :init
  (setq neo-persist-show nil)
  (setq neo-show-hidden-files t)
  (setq neo-smart-open nil)
  (setq neo-theme 'arrow)
  (setq neo-window-width 40)
  (evil-set-initial-state 'neotree-mode 'motion)
  :config
  (defun mrm/neotree-enter-hide ()
    "Show Neotree focused on the current directory."
    (interactive)
    (neotree-enter)
    (neotree-hide))
  (defun mrm/directory-tree ()
    "Show Neotree focused on the current directory."
    (interactive)
    (neotree-dir default-directory))
  (defun mrm/project-tree ()
    "Show Neotree focused on the current project."
    (interactive)
    (neotree-dir (mrm/project-directory))))
