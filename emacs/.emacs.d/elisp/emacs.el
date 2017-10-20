(setq-default cursor-in-non-selected-windows nil)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq-default linum-format "%3d ")
(setq-default make-backup-files nil)
(setq-default scroll-bar-mode nil)
(setq-default truncate-lines nil)

(electric-indent-mode 1)
(set-fringe-mode 0)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(if (not (display-graphic-p)) (menu-bar-mode -1))
