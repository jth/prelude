(require 'prelude-packages)

;;; rustic
(prelude-require-packages '(rustic))
(setq rustic-format-on-save t)

;; custom bindings
(global-set-key [f8] 'treemacs)
(global-set-key [f9] 'lsp-ui-imenu)
