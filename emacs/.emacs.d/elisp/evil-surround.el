(use-package evil-surround
  :ensure t
  :demand
  :config
  (add-hook 'org-mode-hook (lambda ()
                             (push '(?b . ("*" . "*")) evil-surround-pairs-alist)
                             (push '(?c . ("~" . "~")) evil-surround-pairs-alist)
                             (push '(?i . ("/" . "/")) evil-surround-pairs-alist)
                             (push '(?s . ("+" . "+")) evil-surround-pairs-alist)
                             (push '(?u . ("_" . "_")) evil-surround-pairs-alist)
                             (push '(?v . ("=" . "=")) evil-surround-pairs-alist)))
  (global-evil-surround-mode 1))
