(require 'ox-publish)

(setq mrm/publish-src-dir "~/Dropbox/Org/")
(setq mrm/publish-dst-dir "~/Dropbox/Wiki/")

(global-set-key (kbd "C-c o p") 'mrm/org-publish)

(setq org-export-with-author nil)
(setq org-export-with-section-numbers nil)
(setq org-export-with-toc nil)

(setq org-html-head (mrm/get-file-as-string "~/.emacs.d/export/head.html"))
(setq org-html-head-include-default-style nil)
(setq org-html-head-include-scripts nil)
(setq org-html-postamble nil)
(setq org-html-validation-link nil)
(setq org-html-divs '((preamble "header" "preamble")
                      (content "main" "content")
                      (postamble "footer" "postamble")))

(setq org-publish-project-alist
    `(
        ("org"
        :auto-sitemap t
        :base-directory ,mrm/publish-src-dir
        :base-extension "org"
        :publishing-directory ,mrm/publish-dst-dir
        :publishing-function org-html-publish-to-html
        :recursive t
        :sitemap-title "Wiki Sitemap"
        )))

(defun mrm/org-publish ()
  "Publish Notes to Wiki"
  (interactive)
  (org-publish "org"))
