(use-package js
  :bind (:map js-mode-map
              ("C-c c f" . json-pretty-print)
              ("C-c c F" . json-pretty-print-ordered)))
