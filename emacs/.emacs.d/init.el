(package-initialize)

(defun config-file (name) (concat "~/.emacs.d/elisp/" name ".el"))
(defun load-config (name) (load-file (config-file name)))

(load-config "settings")
(load-config "package")
(load-config "theme")
(load-config "util")
(load-config "keys")
(load-config "custom")

(setq custom-file (config-file "custom"))
(load custom-file)
