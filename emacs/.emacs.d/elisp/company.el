(use-package company
  :ensure t
  :demand
  :diminish company-mode
  :bind (:map company-active-map
              ("M-a" . company-show-first)
              ("M-d" . company-next-page)
              ("M-e" . company-show-last)
              ("M-h" . company-show-doc-buffer)
              ("M-u" . company-previous-page))
  :init
  (global-company-mode)
  :config
  (setq company-dabbrev-downcase nil)
  (setq company-show-numbers t)
  (setq company-tooltip-align-annotations t)
  (setq evil-complete-next-func 'company-complete-func)
  (setq evil-complete-prev-func 'company-complete-func))

(defun company-complete-func (arg)
  (interactive)
  (company-complete)
  (message arg))

(defun company-show-first ()
  "Select the first candidate"
  (interactive)
  (company-set-selection 0))

(defun company-show-last ()
  "Select the first candidate"
  (interactive)
  (company-set-selection (1- company-candidates-length)))
