(use-package web-mode
  :ensure t
  :commands (web-mode)
  :mode (("\\.css\\'" . web-mode)
         ("\\.dust\\'" . web-mode)
         ("\\.htm\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.json\\'" . web-mode)))
