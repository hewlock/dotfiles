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
         ("M-S" . mrm/org-sort-entries)
         ("M-d" . mrm/org-todo-done)
         ("M-f" . mrm/org-toggle-tag-flagged)
         ("M-h" . org-metaleft)
         ("M-i" . mrm/org-insert-todo-heading)
         ("M-j" . org-metadown)
         ("M-k" . org-metaup)
         ("M-l" . org-metaright)
         ("M-o" . mrm/org-insert-heading-respect-content)
         ("M-s" . org-sort)
         ("M-t" . mrm/org-todo-todo))
  :init
  ; First
  (setq org-directory "~/Dropbox/Org/Todos")
  (setq org-agenda-files (split-string (shell-command-to-string (concat "find " org-directory " -type d"))))
  (setq org-default-notes-file (concat org-directory "/Misc.org"))
  ; Sorted
  (setq org-export-with-toc nil)
  (setq org-html-head-include-default-style nil)
  (setq org-html-head-include-scripts nil)
  (setq org-html-validation-link nil)
  (setq org-file-apps '((auto-mode . emacs) (directory . emacs) ("\\.x?html?\\'" . "/usr/bin/brave-browser %s") ("\\.pdf\\'" . "/usr/bin/brave-browser %s")))
  (setq org-log-into-drawer t)
  (setq org-outline-path-complete-in-steps nil)
  (setq org-refile-targets '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9)))
  (setq org-refile-use-outline-path t)
  (setq org-startup-folded nil)
  (setq org-agenda-custom-commands
      '(("o" "Overview Agenda"
         ((todo "PROJECT")
          (tags-todo (concat "flagged+SCHEDULED<=\"<now>\"|flagged+SCHEDULED=\"\"")))
         ((org-agenda-remove-tags t)))))
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline org-default-notes-file "Misc")
           "* TODO %?"
           :empty-lines-before 1)))
  (setq org-todo-keywords
        '((sequence
           "TODO(t)" ; needs to be first
           "PROJECT(p)"
           "|"
           "CANCELLED(c)"
           "DONE(d)"
           )))
  (add-hook 'org-mode-hook 'turn-on-auto-fill)
  (evil-set-initial-state 'org-agenda-mode 'motion)
  :config
  (advice-add 'org-clocktable-indent-string
              :override #'mrm/org-clocktable-indent-string)
  (setq org-html-head
        (concat "<style>\n"
                (mrm/get-file-as-string "~/.emacs.d/css/solarized.css")
                "</style>")))

(use-package org-agenda
  :bind (:map org-agenda-mode-map
         ("M-d" . (lambda () (interactive) (org-agenda-todo "DONE")))
         ("M-t" . (lambda () (interactive) (org-agenda-todo "TODO")))))

(defun mrm/org-capture-todo ()
  "Capture a new TODO"
  (interactive)
  (org-capture nil "t")
  (evil-append 1))

(defun mrm/org-sort-entries ()
  "Sort entries by todo state > priority > scheduled time"
  (interactive)
  (org-sort-entries nil ?s)
  (org-sort-entries nil ?p)
  (org-sort-entries nil ?o))

(defun mrm/org-todo-done ()
  "Set a todo to DONE"
  (interactive)
  (org-todo "DONE"))

(defun mrm/org-todo-todo ()
  "Set a todo to TODO"
  (interactive)
  (org-todo "TODO"))

(defun mrm/org-toggle-tag (name)
  "Toggle tag to org item"
  (let ((tags (org-get-tags)))
    (if (member name tags)
        (org-set-tags (sort (remove name tags) 'string<))
      (org-set-tags (sort (append (list name) tags) 'string<)))))

(defun mrm/org-toggle-tag-flagged ()
  "Toggle flagged tag"
  (interactive)
  (mrm/org-toggle-tag "flagged"))

(defun mrm/org-insert-todo-heading ()
  "Insert todo heading in Evil append mode"
  (interactive)
  (org-insert-todo-heading 1)
  (evil-append 1))

(defun mrm/org-insert-heading-respect-content ()
  "Insert heading in Evil append mode"
  (interactive)
  (org-insert-heading-respect-content 1)
  (evil-append 1))

(defun mrm/org-clocktable-indent-string (level)
  "Fix \emsp from showing in clock tables"
  (if (= level 1)
      ""
    (let ((str ""))
      (while (> level 2)
        (setq level (1- level)
              str (concat str "~~")))
      (concat str "~> "))))

