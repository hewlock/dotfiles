(use-package less-css-mode
  :ensure t
  :commands (less-css-mode)
  :mode (("\\.less\\'" . less-css-mode)
         ("\\.css\\'" . less-css-mode)))
