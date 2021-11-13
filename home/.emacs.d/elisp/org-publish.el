(require 'ox-publish)

(setq mrm/publish-src-dir "~/Dropbox/Org/")
(setq mrm/publish-dst-dir "~/Dropbox/Wiki/")

(global-set-key (kbd "C-c o p") 'mrm/org-publish)
(global-set-key (kbd "C-c o P") 'mrm/org-publish-force)

(setq org-export-with-author nil)
(setq org-export-with-section-numbers nil)
(setq org-export-with-toc nil)

(setq org-html-head (concat
                     (mrm/get-file-as-string "~/.emacs.d/export/reset.html")
                     (mrm/get-file-as-string "~/.emacs.d/export/default.html")
                     (mrm/get-file-as-string "~/.emacs.d/export/gtd.html")
                     (mrm/get-file-as-string "~/.emacs.d/export/script.html")
                     ))
(setq org-html-head-include-default-style nil)
(setq org-html-head-include-scripts nil)
(setq org-html-postamble nil)
(setq org-html-validation-link nil)
(setq org-html-divs '((preamble "header" "preamble")
                      (content "main" "content")
                      (postamble "footer" "postamble")))

(add-to-list 'org-export-options-alist '(:subtitle "SUBTITLE" nil nil parse))
(setq org-publish-project-alist
    `(
        ("org"
        :auto-sitemap t
        :base-directory ,mrm/publish-src-dir
        :base-extension "org"
        :publishing-directory ,mrm/publish-dst-dir
        :publishing-function org-html-publish-to-html
        :recursive t
        :makeindex t
        :sitemap-filename "Sitemap.org"
        :sitemap-format-entry mrm/sitemap-format-entry
        :sitemap-title "Wiki Sitemap"
        )))

(defun mrm/sitemap-format-entry (entry style project)
  "Override default sitemap to include subtitle"
  (setq title (org-publish-find-title entry project))
  (setq subtitle (org-publish-find-property entry :subtitle project))
  (cond ((not (directory-name-p entry))
	 (format "[[file:%s][%s%s]]"
		 entry
		 (concat "*" title "*")
		 (if subtitle (concat " - /" (car subtitle) "/") "")))
	((eq style 'tree)
	 ;; Return only last subdir.
	 (concat "*" (file-name-nondirectory (directory-file-name entry)) "*"))
	(t entry)))

(defun mrm/org-publish ()
  "Publish Notes to Wiki"
  (interactive)
  (org-publish "org"))

(defun mrm/org-publish-force ()
  "Publish Notes to Wiki (force publish all)"
  (interactive)
  (org-publish "org" t))
