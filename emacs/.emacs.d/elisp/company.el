(use-package company
  :ensure t
  :init
  (global-company-mode)
  :config
  (setq company-tooltip-align-annotations t)
  (setq company-show-numbers t)
  (setq company-dabbrev-downcase nil)
  :diminish company-mode)
