(use-package eww
  :bind (("C-c e b" . eww-list-buffers)
         ("C-c e f" . eww-list-bookmarks)
         ("C-c e o" . eww)
         :map eww-mode-map
         ("C-c c b" . eww-back-url)
         ("C-c c e" . mrm/eww-follow-link-external)
         ("C-c c f" . eww-forward-url)
         ("C-c c h" . eww-list-histories)
         ("M-RET" . mrm/eww-follow-link-new-buffer))
  :init
  (evil-set-initial-state 'eww-bookmark-mode 'motion)
  (evil-set-initial-state 'eww-buffers-mode 'motion)
  (evil-set-initial-state 'eww-history-mode 'motion)
  (evil-set-initial-state 'eww-mode 'motion)
  :config
  (add-hook 'eww-after-render-hook 'mrm/set-eww-buffer-title)
  :preface
  (defun mrm/eww-follow-link-external ()
    (interactive)
    (setq current-prefix-arg '(4)) ; C-u
    (call-interactively 'eww-follow-link))
  (defun mrm/eww-follow-link-new-buffer ()
    (interactive)
    (setq current-prefix-arg '(16)) ; C-u C-u
    (call-interactively 'eww-follow-link))
  (defun mrm/set-eww-buffer-title ()
    (let* ((title  (plist-get eww-data :title))
           (url    (plist-get eww-data :url))
           (result (concat "*eww-" (or title
                                       (if (string-match "://" url)
                                           (substring url (match-beginning 0))
                                         url)) "*")))
      (rename-buffer result t))))

