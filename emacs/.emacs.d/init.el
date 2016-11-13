(package-initialize)

(defun load-config (name) (load-file (concat "~/.emacs.d/elisp/" name ".el")))

(load-config "settings")
(load-config "package")
(load-config "theme")
(load-config "util")
(load-config "keys")
