(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-list '(
	color-theme-solarized
	evil
	helm
	helm-projectile
	neotree
	org
	powerline
	projectile
	which-key				; keybinding help
	))

(unless package-archive-contents (package-refresh-contents))
(dolist (package package-list)
	(unless (package-installed-p package)
		(package-install package)))

(require 'evil)
(require 'helm-config)
(require 'helm-projectile)
(require 'neotree)
(require 'org)
(require 'powerline)
(require 'projectile)
(require 'which-key)

(evil-mode 1)
(helm-mode 1)
(helm-projectile-on)
(projectile-mode 1)
(which-key-mode 1)
