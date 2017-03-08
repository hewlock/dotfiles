(package-initialize)

(defun load-config (name) (load-file (concat "~/.emacs.d/elisp/" name ".el")))

(load-config "settings")
(load-config "package")
(load-config "theme")
(load-config "util")
(load-config "keys")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(which-key neotree helm-projectile helm evil color-theme-solarized))))
