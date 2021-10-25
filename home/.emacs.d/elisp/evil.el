(use-package evil
  :ensure t
  :demand
  :diminish 'undo-tree-mode
  :bind (:map evil-motion-state-map
              ("RET" . nil)
              ("SPC" . nil)
              :map evil-normal-state-map
              ("RET" . evil-ret))
  :init
  (setq evil-mode-line-format '(after . mode-line-buffer-identification))
  (setq evil-want-C-i-jump nil) ; Enable TAB for org mode
  (setq evil-want-C-u-scroll t)
  :config
  (define-key evil-motion-state-map (kbd "C-w C-c") 'kill-buffer-and-window)
  (evil-mode))

(defun mrm/evil-global-unbind (binding)
  "Unbind key from all evil mode maps"
  (with-eval-after-load 'evil-maps
    (define-key evil-insert-state-map (kbd binding) nil)
    (define-key evil-motion-state-map (kbd binding) nil)
    (define-key evil-normal-state-map (kbd binding) nil)
    (define-key evil-visual-state-map (kbd binding) nil)))
