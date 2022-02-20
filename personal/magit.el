(defun magit-yank-branch-name ()
  "Show the current branch in the echo-area and adds it to the `kill-ring'."
  (interactive)
  (let ((branch (magit-get-current-branch)))
    (if branch
        (progn (kill-new branch)
               (message "%s" branch))
      (user-error "No current branch"))))
