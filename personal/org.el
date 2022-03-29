(require 'org)
(require 'ob-plantuml)

(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-plantuml-jar-path "~/.emacs.d/personal/resource/plantuml-nodot.1.2022.1.jar")
(setq org-image-actual-width nil)

;;; Render images inline by default
(add-hook 'org-babel-after-execute-hook
          (lambda ()
            (when org-inline-image-overlays
              (org-redisplay-inline-images))))

;;; Allow highlighting single char
;;; https://stackoverflow.com/questions/1218238/how-to-make-part-of-a-word-bold-in-org-mode
(setcar org-emphasis-regexp-components " \t('\"{[:alpha:]")
(setcar (nthcdr 1 org-emphasis-regexp-components) "[:alpha:]- \t.,:!?;'\")}\\")
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
