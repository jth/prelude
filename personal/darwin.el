;;; macOS specific settings:
;;; - Use gnu ls (installed via homebrew) as dired ls
;;; - Custom ordering of for dired
;;; Convention for modifier keys on macOS:
;;; - 'option' is unaltered: Needed for lots of special symbols (@,{},[])
;;; - 'command' -> meta
;;; - Use 'fn' -> super
(when (eq system-type 'darwin)
  (defvar dired-use-ls-dired t)
  (setq insert-directory-program "/usr/local/bin/gls"
        dired-listing-switches "-aBhl --group-directories-first"
        mac-option-modifier 'none
        mac-function-modifier 'super
        mac-command-modifier 'meta
        default-input-method "MacOSX"))
