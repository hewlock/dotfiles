(use-package company
  :ensure t
  :demand
  :diminish company-mode
  :bind (:map company-active-map
              ("C-d" . company-next-page)
              ("C-h" . mrm/company-show-first)
              ("C-j" . company-select-next)
              ("C-k" . company-select-previous)
              ("C-l" . mrm/company-show-last)
              ("C-n" . company-show-doc-buffer)
              ("C-u" . company-previous-page))
  :init
  (setq company-dabbrev-downcase nil)
  (setq company-show-numbers t)
  (setq company-tooltip-align-annotations t)
  :config
  (evil-define-key 'insert company-mode-map (kbd "C-j") 'company-complete)
  (setq company-backends (mapcar #'mrm/company-backends company-backends))
  (global-company-mode)
  :preface
  (defun mrm/company-backends (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))
  (defun mrm/company-show-first ()
    "Select the first candidate"
    (interactive)
    (company-set-selection 0))
  (defun mrm/company-show-last ()
    "Select the first candidate"
    (interactive)
    (company-set-selection (1- company-candidates-length))))
