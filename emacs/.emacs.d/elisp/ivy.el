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
  :config
  (ivy-mode 1))

(use-package ivy-hydra
  :ensure t)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))

(use-package counsel
  :ensure t
  :bind (("C-c d f" . counsel-file-jump)
         ("C-c d o" . counsel-find-file)
         ("C-c d s" . counsel-ag)
         ("C-c h F" . counsel-faces)
         ("C-c m f" . counsel-bookmark)
         ("C-c p f" . mrm/project-file-jump)
         ("C-c p g" . mrm/project-git)
         ("C-c p o" . mrm/project-find-file)
         ("C-c p s" . mrm/project-ag)
         ("C-c y f" . counsel-yank-pop))
  :config
  (defun mrm/project-ag ()
    "Search files in project directory."
    (interactive)
    (counsel-ag nil (mrm/project-directory)))
  (defun mrm/project-find-file ()
    "Find file in project directory."
    (interactive)
    (counsel-find-file (mrm/project-directory)))
  (defun mrm/project-file-jump ()
    "Find any file in project directory."
    (interactive)
    (counsel-file-jump nil (mrm/project-directory)))
  (defun mrm/project-git ()
    "Find git file in project directory."
    (interactive)
    (let ((default-directory (mrm/project-directory)))
        (counsel-git))))
