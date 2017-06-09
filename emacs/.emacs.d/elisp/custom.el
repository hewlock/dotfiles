(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("f3da5f9b4cdb8e76a672b8909bd5885a40e9fdf10537a3629edd2fa2568e2a53" "86546e2f33a7496b88b2749bce0ed11e104d22943facb7d19d25b023dce32d34" "cb64003a9394ddf53499711bbd5d1bc7a1a063e683476359d55c8b28772da8d2" "c6847d840fe4f157a051491fbaf85996a7ee42f13d2cd7c949ceee2a37d3e496" "c63fd941056b33796da87d69582e82a329d3d182b7ef6e3d88b2764639ef7529" "bae0a34b2e4b0f03877dd0ec8f5242bddc573b2d686c267ac945816604eebacb" "66d3e0059244d38777a3b05874f4a4375a14b9e412eb9f4d5c27f44bfb30773a" "bc36ced40785a1d40292618120ddc3cbfc3e01e8563d4d9d943cf161a8b5f3e7" "ddd8fed7e05fe8a40bc641ab557a5db68f410f82e227fab45885357ce6bd0ee3" "a7d0abb2028a4df44ecae7df7388d9cab8b167284ce94a338dba8c48e0f790a5" "5c7d3487e399adef7cd1ff11b94a3dfbba62d9165f347ae42554cba7ea1676db" "8ed8faf604ad4ce6df3f67c7437df3f0155eee0565657d8109c5d1f8487c8bff" "a50a8093862da2285559ff1d5df88fa35c1263b7e49e478e18b916d553b0bede" "605d69b9eb499ca2ddecfd15173aba5fe2f36d3b3e7214fc8f83da839a75426f" "58b1cc4fdffe792a0950d89f67c7a0e5a0e28ea953097a13a07374815da51696" "4cb6b5d5c1b817fff5152eb78ffc621a72ba307bad0467fbc6d7ef70de66dc6d" "0ba80667524ec6e16525da88732436dd6a4c5c22e4dc9b02b7364899715a60ea" "4a73bea77a41b6a59176774c275d0fd844382115a0fd64ff687a175c4724e72c" "dc274c8d0af0681810e61534c24f5c4850b6a50c9aa43c561dc3cbdce7209ccb" "93c13fc101df6a09cde6f43239940dc48e8f10b324612864e1ad2ba9d2dcb0d8" "c8c7f364eb5d73a5f9b76518f66da3ad9be8c5d65e41d8249ba30748609dae63" "e4e5871039885867fade503582fce35a4776403e76cd1816a2990c72409f1dda" "e62e0d8f30c36519f22ab17427a33a7a32b2b90a12aff1d5fd5e4dfc729e4007" "5edc7af712c8e8dfe327caf0cf0ba1368fa0af190dae8102dbe121a68104f8bf" "e92ba2e75bfde36ce23dc529e43ddee1e22225d2c2bee2c27b81f7252dce28a6" "939804a1b48e07cdc90702803f73b9d8e10a8cd65047abd18fd4d606ac472c80" "b1eb2c1e342f504b537b185bff009227a1871d9e3ac071748e1b213e44011f51" "422abe17224b2d0ac44cc75379d1eaf6779f705d4cafacc8309e5fed4e9ed598" "9e269129eb34ecaa85240078922440f1f86a5552720b2edcc83f22960d3f0988" "d05a5e41cb994115c5c5c12443bdcdbd89079f7520cd667cbd72a34e9765eeae" "d7ead6a6519408023ef65491c25521c2c6b8a6e2d5a8f3a57965199e927366d0" "5966a06c6f1bdc5b3bb9e7cfccd7090d163dfcbcdd4f910cb67dff4f3491cd92" "b2d81d223ca3deb70d3e863792c68587751c0ad402234698cdcda2d963705d83" "ec0038cd29c06ee0da8ef17aaaebdb8c80c1867c3f8f838e5d9cd810254c674c" "84d863c5e01f9e4a5a6c4f98eef63e5983fc9620bdde4b8a9e8953c468636720" default)))
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
