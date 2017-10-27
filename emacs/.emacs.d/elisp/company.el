(use-package company
  :ensure t
  :demand
  :diminish company-mode
  :bind (:map company-active-map
              ("C-d" . company-next-page)
              ("C-h" . company-show-first)
              ("C-j" . company-select-next)
              ("C-k" . company-select-previous)
              ("C-l" . company-show-last)
              ("C-n" . company-show-doc-buffer)
              ("C-u" . company-previous-page))
  :init
  (setq company-dabbrev-downcase nil)
  (setq company-show-numbers t)
  (setq company-tooltip-align-annotations t)
  :config
  (evil-define-key 'insert company-mode-map (kbd "C-j") 'company-complete)
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
  (global-company-mode)
  :preface
  (defun company-mode/backend-with-yas (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))
  (defun company-show-first ()
    "Select the first candidate"
    (interactive)
    (company-set-selection 0))
  (defun company-show-last ()
    "Select the first candidate"
    (interactive)
    (company-set-selection (1- company-candidates-length))))

