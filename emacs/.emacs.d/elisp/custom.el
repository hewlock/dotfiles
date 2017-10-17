(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("c875771dcd56bb5de65b84a386a0e4d5d4c58db4b1a261f1b27d697386920f17" "1b56a1fad7d2af7255bf3c29d1ebc0ce7a177d967ee706af77c12555d6b0c8b5" "2678b686f6dcba8bafa3855e82dfb6629aba1056300ef2723f01fa6e0f5cc485" "ead3f8732199cc7ec8417c704f05cd13448a0dca9b8bf5bc5edbd46132e82819" "bb377899410961e5dd71af2431c742827a85911a6c459149fc8ba7b47df20700" "0684581ea9ac73118a56b08c94c1d2a38fd2de67a8d82152ae05ea5fd0239781" "e568f019c2ba7ec56b11c5427e8884f0a308babe2040b7fc2ddfbc3971f279ce" "e5dfa4105f8f5e52f5dae54bb107826507853434826b37cf97da421c22a5e93e" "1aba480433dc666cf025a94c4f1ebf2a59e09b3ea2ab474d6776276b6aba0a53" "4cb0460457dabb65b04a153272027b7e52dcb41c1d73be9fd4c572ced9d19e2d" "d9461311a3aec99a681cffcf1636f5826411bcf6fd4b312b1195a27562d43b5e" "07ffdbade90cc0c94c1d26190e3fcb1919bbfb6e921c8f7462ed13f54b4d0649" "1d93b9ce86ae310c2e7295eaaefa91f153e08896c6fbfa3134cf517e69f2ee58" "eeac015e4d6d661525d0bc977df242fd812cc67d5985e2f2ca52507172c6518e" "f860118b96ca523cebdbae92ce2bc577726a90b571b195dfeb5330693cdb6f11" "cf21467cd16c3b80b46ff5f93c248bf4396fd5af172cfe063cd56dc58cf80c07" "fcbf6177a2965e4520cb81e1b5249d112bebcccb602cb7a15487577685f4363f" "f548af766de576bdf23b7aa510b61447ac76108263e9fd391600d8f182d43363" "1bd8613f11feda3e81bab383b9dd04c99be5ec32df9888e0359c5480d1bc3b38" "d28491a83a10410b379e8545f25237e210bfc5c49dbb9e20d2c7942c98af1079" "8edda743b38649c1420732a7813e854e261c9d787132e94938ff17397c451ad1" "8cf6c3f1c14b96b618b4fc975d454b90426feee2abd0c013dc0570a7afc68d83" "c272e173c729f205c7945d047223dde15ad6d020b3d5b084a04546a2369bd8c2" "b195dfa36feb58177b747065ef7c9b3c855fc43de0982f075644601a0abe122b" "46c816aaf86a73df91c323d1150c43367f2d4c93cf7087b9638d8bed774a3be3" "477eedb552798d151d6ef9262daa7b17d04781f0df3920024e20ee614d00914e" "ac2c8aad77085541fabddd83aa3864de4a61e633e2fc715609a1aac676b8dd97" "334d4edc06a9e6fdaddae9f8bc39ad88a1a5b77277ae2f988eb00059f190a17a" "f44d66509163e6f52a05bdf854f5c6b02e7a10292060abb57e2ad19d694fc5c4" "f825fb5a94fbddde0372b9ec56d31541f33be1623fd308d35883ad6243f442d8" "9a545afc3338645a5af85afb403776ea2694725e39ce013ab868c833a034a829" "42fa2036f6bfeb77ae695c9c67c5abf4385f621e1cb4c76d1a2f54a4a85c82f1" "721d5056f89eb0572897e55735ffe6eab5a5bcf4318489c613d5b09644781fa7" "e39cb225101216b310c7a9aad9d93324121fa5630be51ca1a04816817dfaf764" "e3b17a86b6e79300fe14936767ee2d4907280ebcef1075419253be1caaa7b06f" "c0c125f89241418511657d0b8b8cfd5353af460294081da4d7b9c99c20f50294" "c7153243be25ec4ff7131c90746adeee892241f23f0abb6e6a14beb14e8378d1" "18976c38895796fa24d128834611b24bde8ee9b74259fdcf471dcc835cc37872" "07bb2e5a495a3faae56aba444ed1514131e9d43ffab03c17e0787acd68155692" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(fill-column 80)
 '(indent-tabs-mode nil)
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
