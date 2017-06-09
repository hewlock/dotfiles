(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("58b1cc4fdffe792a0950d89f67c7a0e5a0e28ea953097a13a07374815da51696" "4cb6b5d5c1b817fff5152eb78ffc621a72ba307bad0467fbc6d7ef70de66dc6d" "0ba80667524ec6e16525da88732436dd6a4c5c22e4dc9b02b7364899715a60ea" "4a73bea77a41b6a59176774c275d0fd844382115a0fd64ff687a175c4724e72c" "dc274c8d0af0681810e61534c24f5c4850b6a50c9aa43c561dc3cbdce7209ccb" "93c13fc101df6a09cde6f43239940dc48e8f10b324612864e1ad2ba9d2dcb0d8" "c8c7f364eb5d73a5f9b76518f66da3ad9be8c5d65e41d8249ba30748609dae63" "e4e5871039885867fade503582fce35a4776403e76cd1816a2990c72409f1dda" "e62e0d8f30c36519f22ab17427a33a7a32b2b90a12aff1d5fd5e4dfc729e4007" "5edc7af712c8e8dfe327caf0cf0ba1368fa0af190dae8102dbe121a68104f8bf" "e92ba2e75bfde36ce23dc529e43ddee1e22225d2c2bee2c27b81f7252dce28a6" "939804a1b48e07cdc90702803f73b9d8e10a8cd65047abd18fd4d606ac472c80" "b1eb2c1e342f504b537b185bff009227a1871d9e3ac071748e1b213e44011f51" "422abe17224b2d0ac44cc75379d1eaf6779f705d4cafacc8309e5fed4e9ed598" "9e269129eb34ecaa85240078922440f1f86a5552720b2edcc83f22960d3f0988" "d05a5e41cb994115c5c5c12443bdcdbd89079f7520cd667cbd72a34e9765eeae" "d7ead6a6519408023ef65491c25521c2c6b8a6e2d5a8f3a57965199e927366d0" "5966a06c6f1bdc5b3bb9e7cfccd7090d163dfcbcdd4f910cb67dff4f3491cd92" "b2d81d223ca3deb70d3e863792c68587751c0ad402234698cdcda2d963705d83" "ec0038cd29c06ee0da8ef17aaaebdb8c80c1867c3f8f838e5d9cd810254c674c" "84d863c5e01f9e4a5a6c4f98eef63e5983fc9620bdde4b8a9e8953c468636720" default)))
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
