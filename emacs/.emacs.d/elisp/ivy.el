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
              ("M-d" . ivy-end-of-buffer)
              ("M-u" . ivy-beginning-of-buffer)
              ("M-o" . hydra-ivy/body))
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
         ("C-p" . counsel-yank-pop)
         :map counsel-ag-map
         ("C-r" . counsel-git-grep-query-replace)
         :map counsel-git-grep-map
         ("C-r" . counsel-git-grep-query-replace))
  :commands
  counsel-yank-pop
  :config
  (setq counsel-ag-base-command "grep -nr %s .")
  (defun mrm/project-find-file ()
    "Find file in project directory."
    (interactive)
    (counsel-find-file (mrm/project-directory)))
  (defun mrm/project-file-jump ()
    "Find git file in project directory."
    (interactive)
    (let ((default-directory (mrm/project-directory)))
        (counsel-git)))
  (defun mrm/project-search ()
    "Search files in project directory."
    (interactive)
    (let ((default-directory (mrm/project-directory)))
        (counsel-git-grep))))

(mrm/evil-global-unbind "C-p")
