(use-package org
  :ensure t
  :bind (("C-c o o" . org-agenda)
         :map org-mode-map
         ("M-H" . org-shiftmetaleft)
         ("M-J" . org-shiftmetadown)
         ("M-K" . org-shiftmetaup)
         ("M-L" . org-shiftmetaright)
         ("M-h" . org-metaleft)
         ("M-j" . org-metadown)
         ("M-k" . org-metaup)
         ("M-l" . org-metaright))
  :init
  (setq org-startup-folded nil))
