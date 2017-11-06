(defvar mrm/project-directory-internal
  (locate-dominating-file default-directory ".git")
  "Project directory.")

(defun mrm/project-directory ()
  "Retrive project directory.  Error if project directory not set."
  (if (eq nil mrm/project-directory-internal)
      (error "Project directory not set.")
    mrm/project-directory-internal))

(defun mrm/project-quit ()
  "Quit current project (clear project directory)."
  (interactive)
  (setq mrm/project-directory-internal nil))

(defun mrm/project-cd ()
  "Change project directory."
  (interactive)
  (let ((dir (if (eq nil mrm/project-directory-internal)
                 default-directory
               mrm/project-directory-internal)))
    (setq mrm/project-directory-internal
          (read-directory-name "Change project directory: " dir nil t))))

(defun mrm/project-pwd ()
  "Print project directory."
  (interactive)
  (message (concat "Project " (mrm/project-directory))))
