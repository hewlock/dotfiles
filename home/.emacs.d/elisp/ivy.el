(use-package ivy
  :ensure t
  :demand
  :diminish 'ivy-mode
  :bind (:map ivy-minibuffer-map
              ("C-d" . ivy-scroll-up-command)
              ("C-n" . ivy-next-line)
              ("C-o" . ivy-dispatching-done)
              ("C-p" . ivy-previous-line)
              ("C-u" . ivy-scroll-down-command)
              ("M-RET" . ivy-immediate-done)
              ("M-d" . ivy-end-of-buffer)
              ("M-o" . ivy-call)
              ("M-u" . ivy-beginning-of-buffer))
  :init
  (setq ivy-count-format "%d/%d ")
  (setq ivy-height 15)
  :config
  (ivy-mode 1))

(use-package ivy-hydra
  :ensure t)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
         :map swiper-map
         ("C-r" . swiper-query-replace)))

(use-package counsel
  :ensure t
  :bind (("C-c d f" . counsel-file-jump)
         ("C-c d o" . counsel-find-file)
         ("C-c d s" . counsel-ag)
         ("C-c h F" . counsel-faces)
         ("C-c m f" . counsel-bookmark)
         ("C-c p f" . mrm/project-file-jump)
         ("C-c p o" . mrm/project-find-file)
         ("C-c p s" . mrm/project-search)
         ("C-c p S" . mrm/project-search-all)
         ("M-p" . counsel-yank-pop)
         :map counsel-ag-map
         ("C-r" . counsel-git-grep-query-replace)
         :map counsel-git-grep-map
         ("C-r" . counsel-git-grep-query-replace))
  :init
  (setq counsel-file-jump-args
        (split-string ". -name .git -prune -o -name node_modules -prune -o -type f -print"))
  :commands
  counsel-yank-pop
  :config
  (defun mrm/project-find-file ()
    "Find file in project directory."
    (interactive)
    (counsel-find-file (mrm/project-directory)))
  (defun mrm/project-file-jump ()
    "Search file names in project directory."
    (interactive)
    (counsel-file-jump nil (mrm/project-directory)))
  (defun mrm/project-search ()
    "Search file (excluding hidden) contents in project directory."
    (interactive)
    (counsel-ag nil (mrm/project-directory)))
  (defun mrm/project-search-all ()
    "Search file (including hidden) contents in project directory."
    (interactive)
    (counsel-ag nil (mrm/project-directory) "--hidden")))
