(use-package web-mode
  :ensure t
  :commands (web-mode)
  :mode (
         ("\\.css\\'" . web-mode)
         ("\\.htm\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.js\\'" . web-mode)
         ("\\.json\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)
         ))
