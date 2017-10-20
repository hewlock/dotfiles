(setq-default scroll-bar-mode nil)

(setq cursor-in-non-selected-windows nil)
(setq fill-column 80)
(setq indent-tabs-mode nil)
(setq linum-format "%3d ")
(setq make-backup-files nil)
(setq truncate-lines nil)

(electric-indent-mode 1)
(set-fringe-mode 0)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(if (not (display-graphic-p)) (menu-bar-mode -1))
