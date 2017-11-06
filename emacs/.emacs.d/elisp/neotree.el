(use-package neotree
  :ensure t
  :bind (("C-c b t" . neotree-find)
         ("C-c d t" . mrm/directory-tree)
         ("C-c p t" . mrm/project-tree))
  :init
  (setq neo-persist-show nil)
  (setq neo-show-hidden-files t)
  (setq neo-smart-open nil)
  (setq neo-theme 'arrow)
  (setq neo-window-width 40)
  :config
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "o") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "O") 'mrm/neotree-enter-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "r") 'neotree-change-root)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
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
