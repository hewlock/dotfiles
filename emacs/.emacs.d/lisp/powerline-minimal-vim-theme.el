(require 'evil)
(require 'powerline)

(defcustom powerline-evil-tag-style 'verbose
	"The style to use for displaying the evil state tag.
	Valid Values: standard, verbose, visual-expanded"
	:group 'powerline
	:type '(choice (const standard)
					 (const verbose)
					 (const visual-expanded)))

(defface powerline-evil-base-face
	'((t (:foreground "brightmagenta" :inherit mode-line)))
	"Base face for powerline evil faces."
	:group 'powerline)

(defface powerline-evil-normal-face
	'((t (:foreground "brightgreen" :inherit powerline-evil-base-face)))
	"Powerline face for evil NORMAL state."
	:group 'powerline)

(defface powerline-evil-insert-face
	'((t (:foreground "blue" :inherit powerline-evil-base-face)))
	"Powerline face for evil INSERT state."
	:group 'powerline)

(defface powerline-evil-visual-face
	'((t (:foreground "magenta" :inherit powerline-evil-base-face)))
	"Powerline face for evil VISUAL state."
	:group 'powerline)

(defface powerline-evil-operator-face
	'((t (:inherit powerline-evil-normal-face)))
	"Powerline face for evil OPERATOR state."
	:group 'powerline)

(defface powerline-evil-replace-face
	'((t (:inherit powerline-evil-normal-face)))
	"Powerline face for evil REPLACE state."
	:group 'powerline)

(defface powerline-evil-motion-face
	'((t (:inherit powerline-evil-normal-face)))
	"Powerline face for evil MOTION state."
	:group 'powerline)

(defface powerline-evil-emacs-face
	'((t (:inherit powerline-evil-base-face)))
	"Powerline face for evil EMACS state."
	:group 'powerline)

(defun powerline-evil-face ()
	"Function to select appropriate face based on `evil-state'."
	(let* ((face (intern (concat "powerline-evil-" (symbol-name evil-state) "-face"))))
	(if (facep face) face nil)))

(defun powerline-evil-tag ()
	"Get customized tag value for current evil state."
	(let* ((visual-block (and (evil-visual-state-p)
							(eq evil-visual-selection 'block)))
		 (visual-line (and (evil-visual-state-p)
							 (eq evil-visual-selection 'line))))
	(cond ((eq powerline-evil-tag-style 'visual-expanded)
			 (cond (visual-block " +V+ ")
				 (visual-line " -V- ")
				 (t evil-mode-line-tag)))
			((eq powerline-evil-tag-style 'verbose)
			 (upcase (concat (symbol-name evil-state)
							 (cond (visual-block " BLOCK")
								 (visual-line " LINE")))))
			(t evil-mode-line-tag))))

(defun powerline-minimal-vim-theme ()
	(interactive)
	(setq-default mode-line-format
		'("%e"
			(:eval
				(let* ((active (powerline-selected-window-active))
							(mode-line-buffer-id (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
							(mode-line (if active 'mode-line 'mode-line-inactive))
							(evil-face (if active (powerline-evil-face) 'powerline-inactive2))
							(separator-left (intern (format "powerline-%s-%s"
															(powerline-current-separator)
															(car powerline-default-separator-dir))))
							(separator-right (intern (format "powerline-%s-%s"
															 (powerline-current-separator)
															 (cdr powerline-default-separator-dir))))
							(lhs (list 
										(powerline-raw " " evil-face)
										(powerline-raw (powerline-evil-tag) evil-face 'r)
										(funcall separator-left evil-face mode-line)))
							(rhs (list 
										(funcall separator-right mode-line evil-face 'l)
										(powerline-raw " %6p" evil-face 'r)))
							(center (list
										(powerline-buffer-id mode-line-buffer-id 'r))))
				(concat (powerline-render lhs)
						(powerline-fill-center mode-line (/ (powerline-width center) 2.0))
						(powerline-render center)
						(powerline-fill mode-line (powerline-width rhs))
						(powerline-render rhs)))))))

(provide 'powerline-minimal-vim-theme)
