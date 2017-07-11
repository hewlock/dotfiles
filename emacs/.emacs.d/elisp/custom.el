(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
	("33b5bb1c3e6001a7d0d44acf4be7d1b0f992feb1aec59f26fef5272b3c410c67" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(org-agenda-custom-commands
   (quote
	(("o" "Today View"
	  ((tags "CATEGORY=\"inbox\""
			 ((org-agenda-skip-function
			   (quote
				(org-agenda-skip-entry-if
				 (quote todo)
				 (quote done))))
			  (org-agenda-overriding-header "Inbox")))
	   (tags "PRIORITY=\"A\""
			 ((org-agenda-skip-function
			   (quote
				(org-agenda-skip-entry-if
				 (quote todo)
				 (quote done))))
			  (org-agenda-overriding-header "Priority A")))
	   (agenda "")
	   (alltodo ""
				((org-agenda-skip-function
				  (quote
				   (or
					(org-skip-subtree-if-priority 65)
					(org-agenda-skip-if nil
										(quote
										 (scheduled deadline)))))))))))))
 '(org-agenda-files
   (quote
	("~/SpiderOak Hive/Inbox" "~/SpiderOak Hive/GTD/10k Maintenance" "~/SpiderOak Hive/GTD/20k Projects" "~/SpiderOak Hive/GTD/30k Goals" "~/SpiderOak Hive/GTD/40k Vision" "~/SpiderOak Hive/GTD/50k Purpose" "~/SpiderOak Hive/GTD/Actions")))
 '(org-agenda-window-frame-fractions (quote (0.25 . 0.75)))
 '(org-default-notes-file "~/SpiderOak Hive/Inbox/Inbox.org")
 '(org-directory "~/SpiderOak Hive/GTD")
 '(org-link-frame-setup
   (quote
	((vm . vm-visit-folder)
	 (vm-imap . vm-visit-imap-folder)
	 (gnus . org-gnus-no-new-news)
	 (file . find-file)
	 (wl . wl))))
 '(org-refile-targets
   (quote
	((org-agenda-files :maxlevel . 1)
	 (nil :maxlevel . 1))))
 '(org-startup-folded (quote showall))
 '(org-todo-keyword-faces (quote (("WAITING" . "#cb4b16") ("SOMEDAY" . "#cb4b16"))))
 '(org-todo-keywords
   (quote
	((sequence "TODO(t)" "SOMEDAY(s)" "STARTED(b!)" "WAITING(w!)" "|" "CANCELLED(c!)" "DONE(d!)"))))
 '(org-use-fast-todo-selection t)
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
