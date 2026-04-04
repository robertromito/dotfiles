;; init.el for Emacs 30.2
;; Save custom-set variables in a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Set autosave directory
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "autosave/" user-emacs-directory) t)))

;; Ensure autosave directory exists
(make-directory (expand-file-name "autosave/" user-emacs-directory) t)

;; Disable the button bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

