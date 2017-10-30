(use-package company
  :ensure t
  :demand
  :diminish company-mode
  :bind (:map company-active-map
              ("C-d" . company-next-page)
              ("C-h" . company-show-doc-buffer)
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)
              ("C-u" . company-previous-page))
  :init
  (setq company-dabbrev-downcase nil)
  (setq company-require-match nil)
  (setq company-tooltip-align-annotations t)
  :config
  (evil-define-key 'insert company-mode-map (kbd "C-n") 'company-complete)
  (setq company-backends '(company-files
                           (company-css
                            company-dabbrev-code
                            company-etags
                            company-capf
                            :with
                            company-yasnippet)
                           (company-dabbrev
                            :with
                            company-yasnippet)))
  ;;(setq company-backends (mapcar #'mrm/company-backends company-backends))
  (global-company-mode)
  :preface
  (defun mrm/company-backends (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet)))))
