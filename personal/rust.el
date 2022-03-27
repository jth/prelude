(require 'prelude-packages)

;;; rustic
(prelude-require-packages '(rustic lsp-origami))
(setq rustic-format-on-save t)
(setq lsp-ui-imenu-auto-refresh 't)
(setq lsp-ui-imenu-auto-refresh-delay 0.8)

;; code-folding using origami
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-after-open-hook #'lsp-origami-try-enable)
  (define-key lsp-mode-map (kbd "<backtab>") #'origami-recursively-toggle-node))

;; custom bindings
(global-set-key [f8] 'treemacs)
(global-set-key [f9] 'lsp-ui-imenu)
