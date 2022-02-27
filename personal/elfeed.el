(require 'prelude-packages)

;;; elfeed
(prelude-require-packages '(elfeed elfeed-org))
(setq rmh-elfeed-org-files (list "~/.emacs.d/personal/resource/elfeed.org"))

(elfeed-org)
(define-key elfeed-search-mode-map (kbd "R") 'elfeed-mark-all-as-read)

(defun elfeed-mark-all-as-read ()
  (interactive)
  (mark-whole-buffer)
  (elfeed-search-untag-all-unread))
