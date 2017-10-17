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

(defun open-keys-el ()
	(interactive)
	(find-file "~/.emacs.d/elisp/keys.el"))

(defun reload-emacs ()
	(interactive)
	(load-file "~/.emacs.d/init.el"))

(defun light-theme ()
	(interactive)
	(setq frame-background-mode 'light)
	(reload-emacs))

(defun dark-theme ()
	(interactive)
	(setq frame-background-mode 'dark)
	(reload-emacs))

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

(defun archive-current-org-buffer-file ()
  "Archive current buffer and file it is visiting."
  (interactive)
  (let ((file-name (buffer-file-name))
		(file-list (split-string (buffer-file-name) "/")))
	  (if (y-or-n-p (concat "Archive " file-name "?"))
		(let ((parent-list (last file-list 2)))
			(let ((file-node (cdr parent-list)))
			(let ((new-file-name (format "%s %s [%s].org"
					(shell-command-to-string "echo -n $(date +%Y-%m-%d)")
					(file-name-sans-extension (car file-node))
					(car parent-list))))
				(setcar parent-list "archive")
				(setcar file-node new-file-name)
				(let ((new-file-name (mapconcat 'identity file-list "/")))
				(rename-file file-name new-file-name 1)
				(rename-buffer new-file-name)
				(message "Archived to '%s'" new-file-name))))))))

(defun org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY. PRIORITY may be one of the characters ?A, ?B, or ?C."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))
