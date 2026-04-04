;; init.el for Emacs 30.2

;; -------------------------
;; Custom-file
;; -------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; -------------------------
;; Autosave directory
;; -------------------------
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "autosave/" user-emacs-directory) t)))

;; Ensure autosave directory exists
(make-directory (expand-file-name "autosave/" user-emacs-directory) t)

;; -------------------------
;; Disable tool bar
;; -------------------------
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; -------------------------
;; Package management
;; -------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(unless package--initialized
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

;; -------------------------
;; Themes
;; -------------------------

(load-theme 'nord)
