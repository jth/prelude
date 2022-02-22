(require 'ox-latex)
(setq org-latex-pdf-process (list "latexmk -f --shell-escape -pdfxe %f"))
;;; xelatex doesn't use inputenc, leaving line below commented out for now
;;; (setq org-latex-inputenc-alist '(("utf8" . "utf8x")))
