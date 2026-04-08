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
(use-package nord-theme
  :ensure t
  :config
  (load-theme 'nord t)
  (set-face-background 'default "#000000"))

;; Enable window movement with Alt + arrow keys
(windmove-default-keybindings 'meta)

;; Enable mouse window resizing (vertical and horizontal)
(when (fboundp 'window-divider-mode)
  (window-divider-mode 1)
  (setq window-divider-default-right-width 4)
  (setq window-divider-default-bottom-width 4))

(setq window-resize-pixelwise t)
(setq frame-resize-pixelwise t)

;; vterm package
(use-package vterm
  :ensure t
  :config
  (define-key vterm-mode-map (kbd "C-S-v") #'vterm-yank))

(use-package markdown-mode
  :ensure t)

(use-package markdown-mermaid
  :ensure t)

;; Tmux zooming
