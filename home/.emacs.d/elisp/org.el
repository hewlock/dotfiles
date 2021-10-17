(use-package org
  :ensure t
  :bind (("C-c o a" . org-agenda)
		 ("C-c o c" . org-capture)
		 ("C-c o t" . mrm/org-capture-todo)
         :map org-mode-map
         ("C-c c a" . org-table-align)
         ("C-c c e" . org-html-export-as-html)
         ("C-c c u" . org-update-all-dblocks)
         ("M-H" . org-shiftmetaleft)
         ("M-J" . org-shiftmetadown)
         ("M-K" . org-shiftmetaup)
         ("M-L" . org-shiftmetaright)
         ("M-h" . org-metaleft)
         ("M-i" . mrm/org-insert-todo-heading)
         ("M-j" . org-metadown)
         ("M-k" . org-metaup)
         ("M-l" . org-metaright)
         ("M-o" . mrm/org-insert-heading-respect-content)
		 ("M-t" . mrm/org-toggle-tag-flagged))
  :init
  ; First
  (setq org-directory (getenv "X_TODOS"))
  (setq org-agenda-files (split-string (shell-command-to-string (concat "find " org-directory " -type d"))))
  (setq org-default-notes-file (concat org-directory "/Inbox.org"))
  ; Sorted
  (setq org-export-with-toc nil)
  (setq org-html-head-include-default-style nil)
  (setq org-html-head-include-scripts nil)
  (setq org-html-validation-link nil)
  (setq org-log-into-drawer t)
  (setq org-outline-path-complete-in-steps nil)
  (setq org-refile-targets '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9)))
  (setq org-refile-use-outline-path t)
  (setq org-startup-folded nil)
  (setq org-agenda-custom-commands
      '(("o" "Overview Agenda"
         ((tags-todo "inbox")
          (todo "PROJECT")
          (tags-todo (concat "flagged+SCHEDULED<=\"<now>\"|flagged+SCHEDULED=\"\"")))
		 ((org-agenda-remove-tags t)))))
  (setq org-capture-templates
		'(("t" "Todo" entry (file+headline org-default-notes-file "Inbox")
		   "* TODO %?"
		   :empty-lines-before 1)))
  (setq org-todo-keywords
        '((sequence "TODO(t)" "PROJECT(p)" "|" "DONE(d)" "CANCELLED(c)")))
  (add-hook 'org-mode-hook 'turn-on-auto-fill)
  :config
  (advice-add 'org-clocktable-indent-string
              :override #'mrm/org-clocktable-indent-string)
  (setq org-html-head
        (concat "<style>\n"
                (mrm/get-file-as-string "~/.emacs.d/css/solarized.css")
                "</style>")))

(defun mrm/org-capture-todo ()
  "Capture a todo"
  (interactive)
  (org-capture nil "t")
  (evil-append 1))

(defun mrm/org-insert-heading-respect-content ()
  "Call org-insert-heading-respect-content and enter Evil insert mode"
  (interactive)
  (org-insert-heading-respect-content 1)
  (evil-append 1))

(defun mrm/org-insert-todo-heading ()
  "Call org-insert-todo-heading and enter Evil insert mode"
  (interactive)
  (org-insert-todo-heading 1)
  (evil-append 1))

(defun mrm/org-toggle-tag (name)
  "Toggle tag to org item"
  (let ((tags (org-get-tags)))
	(if (member name tags)
		(org-set-tags (sort (remove name tags) 'string<))
	  (org-set-tags (sort (append (list name) tags) 'string<)))))

(defun mrm/org-toggle-tag-flagged ()
  "Toggle flagged tag to org item"
  (interactive)
  (mrm/org-toggle-tag "flagged"))

(defun mrm/org-clocktable-indent-string (level)
  "Fix \emsp from showing in clock tables"
  (if (= level 1)
      ""
    (let ((str ""))
      (while (> level 2)
        (setq level (1- level)
              str (concat str "~~")))
      (concat str "~> "))))

