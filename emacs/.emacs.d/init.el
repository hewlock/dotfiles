(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-list '(
	coffee-mode
	color-theme-solarized
	evil
	evil-surround
	helm
	helm-projectile
	less-css-mode
	markdown-mode
	neotree
	org
	powerline
	projectile
	s						; snippet string library
	web-mode
	which-key				; keybinding help
	yasnippet
	))
(unless package-archive-contents
	(package-refresh-contents))
(dolist (package package-list)
	(unless (package-installed-p package)
		(package-install package)))

; Auto-save buffers
(setq auto-save-visited-file-name t)
(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(load-theme 'solarized t)
(setq frame-background-mode 'dark)

(global-linum-mode t)
(setq linum-format "%3d ")

(setq default-tab-width 4)
(electric-indent-mode 1)
(set-default 'truncate-lines t)

(menu-bar-mode -1)
(set-face-background 'vertical-border "brightgreen")
(set-face-foreground 'vertical-border (face-background 'vertical-border))

(setq evil-want-C-i-jump nil) ; Enable TAB for org mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'helm-config)
(helm-mode 1)
(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil)) ; remove help header
(set-face-attribute 'helm-header nil :foreground "black" :background "brightcyan" :weight 'bold)
(set-face-attribute 'helm-selection nil :foreground "brightred" :background "white" :weight 'bold)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
(setq helm-split-window-in-side-p t)

(require 'helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'neotree-projectile-action)
(helm-projectile-on)

(require 'neotree)
(set-face-attribute 'neo-banner-face nil :foreground "brightcyan")
(set-face-attribute 'neo-dir-link-face nil :foreground "blue")
(set-face-attribute 'neo-expand-btn-face nil :foreground "blue")
(set-face-attribute 'neo-file-link-face nil :foreground "brightcyan")
(set-face-attribute 'neo-header-face nil :foreground "brightcyan")
(set-face-attribute 'neo-root-dir-face nil :foreground "brightcyan")
(setq neo-show-hidden-files t)
(setq neo-smart-open nil)
(setq neo-theme 'arrow)
(setq neo-window-width 40)
(add-hook 'neotree-mode-hook
	(lambda ()
		(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
		(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
(defun neotree-toggle-project ()
	"Toggle show the NeoTree window."
	(interactive)
	(if (neo-global--window-exists-p)
		(neotree-hide)
		(neotree-dir (projectile-project-root))))

(require 'powerline-minimal-vim-theme)
(powerline-minimal-vim-theme)

(setq projectile-require-project-root nil)
(require 'projectile)
(projectile-global-mode)

(require 's) ; string manipulation lib for snippets

(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(require 'yasnippet)
(yas-global-mode 1)

(require 'org)
(setq org-startup-folded 'showall)

(require 'which-key)
(which-key-mode)

(defun mmoulton-helm-search ()
	(interactive)
	(unless helm-source-buffers-list
		(setq helm-source-buffers-list
			(helm-make-source "Buffers" 'helm-source-buffers)))
	(helm :sources '(helm-source-buffers-list
					 helm-source-projectile-files-list)))
(defun mmoulton-reload-emacs-config ()
	(interactive)
	(load-file "~/.emacs.d/init.el"))

(defun kill-other-buffers ()
	"Kill all other buffers."
	(interactive)
	(mapc 'kill-buffer 
		(delq (current-buffer) 
			(remove-if-not 'buffer-file-name (buffer-list)))))

(defun delete-current-buffer-file ()
	"Kill the current buffer and deletes the file it is visiting."
	(interactive)
	(let ((filename (buffer-file-name)))
		(if (y-or-n-p (concat "Delete " filename "?"))
			(when filename
				(if (vc-backend filename)
						(vc-delete-file filename)
					(progn
						(delete-file filename)
						(message "Deleted file %s" filename)
						(kill-buffer)))))))

(defun rename-current-buffer-file ()
	"Renames current buffer and file it is visiting."
	(interactive)
	(let ((name (buffer-name))
			(filename (buffer-file-name)))
		(if (not (and filename (file-exists-p filename)))
				(error "Buffer '%s' is not visiting a file!" name)
			(let ((new-name (read-file-name "New name: " filename)))
				(if (get-buffer new-name)
						(error "A buffer named '%s' already exists!" new-name)
					(rename-file filename new-name 1)
					(rename-buffer new-name)
					(set-visited-file-name new-name)
					(set-buffer-modified-p nil)
					(message "File '%s' successfully renamed to '%s'"
						 name (file-name-nondirectory new-name)))))))

(defun leader-bind (sequence action)
	(define-key evil-normal-state-map (kbd (concat "SPC " sequence)) action))

(defun leader-help (prefix description)
	(which-key-add-key-based-replacements (concat "SPC " prefix) description))

(leader-help "b" "buffer")
(leader-bind "b b" 'helm-buffers-list)
(leader-bind "b c" 'kill-this-buffer)
(leader-bind "b k" 'kill-buffer)
(leader-bind "b l" 'list-buffers)
(leader-bind "b o" 'kill-other-buffers)
(leader-bind "b w" 'read-only-mode)

(leader-help "f" "file")
(leader-bind "f c" 'copy-file)
(leader-bind "f d" 'delete-current-buffer-file)
(leader-bind "f f" 'helm-projectile-find-file)
(leader-bind "f m" 'rename-current-buffer-file)
(leader-bind "f n" 'find-file)
(leader-bind "f r" 'helm-projectile-recentf)
(leader-bind "f s" 'save-buffer)

(leader-help "h" "help")
(leader-bind "h F" 'describe-face)
(leader-bind "h b" 'describe-bindings)
(leader-bind "h c" 'describe-char)
(leader-bind "h f" 'describe-function)
(leader-bind "h k" 'describe-key)
(leader-bind "h m" 'describe-mode)
(leader-bind "h s" 'describe-symbol)
(leader-bind "h v" 'describe-variable)

(global-unset-key (kbd "C-k"))

(global-set-key (kbd "C-h C-f") 'find-function)

(global-set-key (kbd "C-@") 'mmoulton-helm-search)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-k f") 'helm-projectile-ack)
(global-set-key (kbd "C-k m") 'helm-mark-ring)
(global-set-key (kbd "C-k o") 'neotree-find)
(global-set-key (kbd "C-k p") 'neotree-toggle-project)
(global-set-key (kbd "C-k q") 'helm-execute-kmacro)
(global-set-key (kbd "C-k r") 'mmoulton-reload-emacs-config)
(global-set-key (kbd "C-k y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x f") 'helm-projectile-find-file)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "TAB") 'self-insert-command) ; insert TAB character

(define-key neotree-mode-map (kbd "C-c C-h") 'neotree-hidden-file-toggle)
(define-key neotree-mode-map (kbd "C-c C-m") 'neotree-stretch-toggle)
(define-key neotree-mode-map (kbd "C-c C-u") 'neotree-refresh)
(define-key org-mode-map (kbd "M-h") 'org-metaleft)
(define-key org-mode-map (kbd "M-j") 'org-metadown)
(define-key org-mode-map (kbd "M-k") 'org-metaup)
(define-key org-mode-map (kbd "M-l") 'org-metaright)
