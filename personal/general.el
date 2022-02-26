;; Prefer UTF-8 encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Save backup files to tmp dir. Doesn't clutter file tree
;; and avoids iCloud warning popups on Windows
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Highlight overly long lines
(require 'whitespace)
(setq whitespace-line-column 120)

;; Disable scrollbar
(toggle-scroll-bar -1)
