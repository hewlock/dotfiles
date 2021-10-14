(use-package org
  :ensure t
  :bind (("C-c o a" . org-agenda)
         :map org-mode-map
         ("C-c c a" . org-table-align)
         ("C-c c e" . org-html-export-as-html)
         ("C-c c u" . org-update-all-dblocks)
         ("M-H" . org-shiftmetaleft)
         ("M-J" . org-shiftmetadown)
         ("M-K" . org-shiftmetaup)
         ("M-L" . org-shiftmetaright)
         ("M-h" . org-metaleft)
         ("M-i" . (lambda () (interactive) (org-insert-todo-heading 1)))
         ("M-j" . org-metadown)
         ("M-k" . org-metaup)
         ("M-l" . org-metaright)
         ("M-o" . (lambda () (interactive) (org-insert-heading-respect-content 1) (evil-append 1)))
		 ("M-t" . mrm/org-toggle-flagged))
  :init
  (setq org-agenda-files (split-string (shell-command-to-string "find $X_TODOS -type d")))
  (setq org-directory (getenv "X_TODOS"))
  (setq org-export-with-toc nil)
  (setq org-html-head-include-default-style nil)
  (setq org-html-head-include-scripts nil)
  (setq org-html-validation-link nil)
  (setq org-log-into-drawer t)
  (setq org-startup-folded nil)
  (add-hook 'org-mode-hook 'turn-on-auto-fill)
  :config
  (advice-add 'org-clocktable-indent-string
              :override #'mrm/org-clocktable-indent-string)
  (setq org-html-head
        (concat "<style>\n"
                (mrm/get-file-as-string "~/.emacs.d/css/solarized.css")
                "</style>")))

(defun mrm/org-toggle-flagged ()
  "Toggle flagged tag to org item"
  (interactive)
  (let ((tags (org-get-tags)))
	(if (member "FLAGGED" tags)
		(org-set-tags (sort (remove "FLAGGED" tags) 'string<))
	  (org-set-tags (sort (append '("FLAGGED") tags) 'string<)))))

(defun mrm/org-clocktable-indent-string (level)
  "Fix \emsp from showing in clock tables"
  (if (= level 1)
      ""
    (let ((str ""))
      (while (> level 2)
        (setq level (1- level)
              str (concat str "~~")))
      (concat str "~> "))))

