(require 'prelude-packages)

;;; ripgrep
(prelude-require-packages '(rg helm-rg))
(rg-enable-menu)
(global-set-key (kbd "C-c C-s") #'rg-menu)
