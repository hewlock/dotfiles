(use-package undo-fu
  :ensure t
  :demand
  :bind (:map evil-normal-state-map
			  ("u" . undo-fu-only-undo)
			  ("C-r" . undo-fu-only-redo)))
