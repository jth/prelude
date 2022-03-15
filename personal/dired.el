(require 'dired)

;;; Prepend dired-buffers with 'dired'
(add-hook 'dired-mode-hook (lambda () (rename-buffer (generate-new-buffer-name (format "dired: %s" dired-directory)))))

;;; Enable move with 'C' when using split buffers
(setq dired-dwim-target t)
