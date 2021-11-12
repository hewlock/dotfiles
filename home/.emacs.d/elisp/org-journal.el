(use-package org-journal
  :ensure t
  :bind (("C-c o c" . calendar)
         ("C-c o j" . mrm/org-journal-new-entry))
  :init
  (setq org-journal-date-format "%Y-%m-%d")
  (setq org-journal-dir (concat "~/Dropbox/Org/Journal/" (format-time-string "%Y") "/"))
  (setq org-journal-file-format "%Y-%m-%d.org")
  (setq org-journal-hide-entries-p nil)
  (setq org-journal-time-format "%-I:%M %p\n\n")
  (setq org-journal-time-prefix "\n* ")
  (evil-set-initial-state 'calendar-mode 'emacs))

(defun mrm/org-journal-new-entry ()
  "Create a new journal entry.
Needed to fix cached time in org-journal-date-prefix."
  (interactive)
  (setq-default org-journal-date-prefix (concat
                                         "#+Title: "
                                         (format-time-string "%Y-%m-%d")
                                         "\n#+Subtitle: "
                                         (format-time-string "%A")
                                         "\n#+Date: "))
  (org-journal-new-entry nil))

