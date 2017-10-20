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
(load-config "evil")
(load-config "projectile")

;; sorted
(load-config "neotree")
(load-config "which-key")

;; (load-config "settings")
;; (load-config "package")
;; (load-config "util")
;; (load-config "keys")
;; (load-config "custom")

(setq custom-file (config-file "custom"))
(load custom-file)
