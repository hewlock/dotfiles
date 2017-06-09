(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
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
    (which-key neotree helm-projectile helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Roboto Mono for Powerline"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "black" :underline "Gray50" :height 1.6))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "black"))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "black"))))
 '(org-todo ((t (:foreground "red2" :weight bold)))))
