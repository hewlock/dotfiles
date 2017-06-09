(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("d7ead6a6519408023ef65491c25521c2c6b8a6e2d5a8f3a57965199e927366d0" "5966a06c6f1bdc5b3bb9e7cfccd7090d163dfcbcdd4f910cb67dff4f3491cd92" "b2d81d223ca3deb70d3e863792c68587751c0ad402234698cdcda2d963705d83" "ec0038cd29c06ee0da8ef17aaaebdb8c80c1867c3f8f838e5d9cd810254c674c" "84d863c5e01f9e4a5a6c4f98eef63e5983fc9620bdde4b8a9e8953c468636720" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODOs"
      ((alltodo ""
		((org-agenda-overriding-header "Unscheduled Todo")
		 (org-agenda-skip-function
		  (quote
		   (org-agenda-skip-entry-if
		    (quote scheduled)))))))
      nil))))
 '(org-agenda-files (quote ("~/Org")))
 '(org-agenda-window-frame-fractions (quote (0.25 . 0.75)))
 '(org-default-notes-file "~/Org/inbox.org")
 '(org-directory "~/Org")
 '(org-link-frame-setup
   (quote
    ((vm . vm-visit-folder)
     (vm-imap . vm-visit-imap-folder)
     (gnus . org-gnus-no-new-news)
     (file . find-file)
     (wl . wl))))
 '(org-log-done (quote time))
 '(org-refile-targets
   (quote
    ((org-agenda-files :level . 1)
     ("~/Org/Archive/archive.org" :level . 1))))
 '(org-startup-folded (quote showall))
 '(package-selected-packages (quote (which-key neotree helm-projectile helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
