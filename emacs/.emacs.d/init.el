(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))
(require 'diminish)
(require 'bind-key)

(defun config-file (name) (concat "~/.emacs.d/elisp/" name ".el"))
(defun load-config (name) (load-file (config-file name)))

;; dependencies
(load-config "emacs")
(load-config "emacs-project")
(load-config "evil")

;; sorted
(load-config "bookmark")
(load-config "coffee-mode")
(load-config "company")
(load-config "dired")
(load-config "evil-surround")
(load-config "eww")
(load-config "ivy")
(load-config "js-mode")
(load-config "less-css-mode")
(load-config "magit")
(load-config "markdown-mode")
(load-config "neotree")
(load-config "org")
(load-config "rainbow-delimiters")
(load-config "web-mode")
(load-config "which-key")
(load-config "whitespace")
(load-config "yasnippet")

(setq custom-file (config-file "custom"))
(load custom-file)
