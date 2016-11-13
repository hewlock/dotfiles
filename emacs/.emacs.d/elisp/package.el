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
	s						; snippet string library
	which-key				; keybinding help
	yasnippet

	coffee-mode
	less-css-mode
	markdown-mode
	web-mode
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
(require 's) ; string manipulation lib for snippets
(require 'which-key)
(require 'yasnippet)

(electric-indent-mode 1)
(evil-mode 1)
(global-linum-mode t)
(helm-mode 1)
(helm-projectile-on)
(menu-bar-mode -1)
(projectile-mode 1)
(which-key-mode 1)
(yas-global-mode 1)