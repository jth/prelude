(require 'magit)
(require 'magit-ediff)

(defun magit-yank-branch-name ()
  "Show the current branch in the echo-area and adds it to the `kill-ring'."
  (interactive)
  (let ((branch (magit-get-current-branch)))
    (if branch
        (progn (kill-new branch)
               (message "%s" branch))
      (user-error "No current branch"))))

(setq magit-diff-refine-hunk (quote all))
(setq magit-ediff-dwim-show-on-hunks t)
;; automatically refresh magit buffers
(add-hook 'after-save-hook 'magit-after-save-refresh-status t)
