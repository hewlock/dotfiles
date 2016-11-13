(require 'cl)

(defun helm-project-list ()
	(interactive)
	(unless helm-source-buffers-list
		(setq helm-source-buffers-list
			(helm-make-source "Buffers" 'helm-source-buffers)))
	(helm :sources '(helm-source-buffers-list
					 helm-source-projectile-files-list)))

(defun neotree-toggle-project ()
	"Toggle show the NeoTree window."
	(interactive)
	(if (neo-global--window-exists-p)
		(neotree-hide)
		(neotree-dir (projectile-project-root))))

(defun open-init-el ()
	(interactive)
	(find-file "~/.emacs.d/init.el"))

(defun reload-emacs ()
	(interactive)
	(load-file "~/.emacs.d/init.el"))

(defun kill-other-buffers ()
	"Kill all other buffers."
	(interactive)
	(mapc 'kill-buffer 
		(delq (current-buffer) 
			(remove-if-not 'buffer-file-name (buffer-list)))))

(defun delete-current-buffer-file ()
	"Kill the current buffer and deletes the file it is visiting."
	(interactive)
	(let ((filename (buffer-file-name)))
		(if (y-or-n-p (concat "Delete " filename "?"))
			(when filename
				(if (vc-backend filename)
						(vc-delete-file filename)
					(progn
						(delete-file filename)
						(message "Deleted file %s" filename)
						(kill-buffer)))))))

(defun rename-current-buffer-file ()
	"Renames current buffer and file it is visiting."
	(interactive)
	(let ((name (buffer-name))
			(filename (buffer-file-name)))
		(if (not (and filename (file-exists-p filename)))
				(error "Buffer '%s' is not visiting a file!" name)
			(let ((new-name (read-file-name "New name: " filename)))
				(if (get-buffer new-name)
						(error "A buffer named '%s' already exists!" new-name)
					(rename-file filename new-name 1)
					(rename-buffer new-name)
					(set-visited-file-name new-name)
					(set-buffer-modified-p nil)
					(message "File '%s' successfully renamed to '%s'"
						 name (file-name-nondirectory new-name)))))))
