(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
	("6cabef1726b9d82bd4b079193dd2ec546e5d9c46446c7574e88579454bad5b19" default)))
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
 '(package-selected-packages
   (quote
	(markdown-mode which-key neotree helm-projectile helm evil)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
