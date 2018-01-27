(use-package web-mode
  :ensure t
  :commands (web-mode)
  :mode (("\\.dust\\'" . web-mode)
         ("\\.htm\\'" . web-mode)
         ("\\.html\\'" . web-mode)))
