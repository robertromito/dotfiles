;; init.el for Emacs 30.2

;; Open only *scratch* buffer, no startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-buffer-choice t)

;; Other global settings
(column-number-mode 1)
(fido-vertical-mode 1)
(setq require-final-newline t)
(add-hook 'before-save-hook #'delete-trailing-whitespace)

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

;; Set default font to FiraCode Nerd Font
(set-face-attribute 'default nil :family "FiraCode Nerd Font" :height 120)

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
  :hook (vterm-mode . goto-address-mode)
  :config
  (define-key vterm-mode-map [remap undo] #'verterm-send-C-z)
  (define-key vterm-mode-map (kbd "C-S-v") #'vterm-yank))

(use-package markdown-mode
  :ensure t)

(use-package markdown-mermaid
  :ensure t)

;; FiraCode ligature support (concise)
(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures 't '("www" "==" "===" "!=" "!=="
                               "->" "=>" "<-" "<=" ">=" "&&" "||"
                               "++" "--" "**" "/*" "*/" "//" ";;"
                               "<<" ">>" "<<<" ">>>"))
  (global-ligature-mode t))

(use-package yaml-mode
  :ensure t
  :mode "\\.ya?ml\\'"
  :config
  (setq yaml-indent-offset 2))

;; Tmux zooming

(defvar my/window-zoom--last-config nil
  "Stores the window configuration before zooming.")

(defun my/window-zoom-toggle ()
  "Toggle zoom of the current window like tmux pane zoom."
  (interactive)
  (if (and my/window-zoom--last-config (window-configuration-p my/window-zoom--last-config))
      (progn
        (let ((config my/window-zoom--last-config))
          (setq my/window-zoom--last-config nil)
          (set-window-configuration config)))
    (setq my/window-zoom--last-config (current-window-configuration))
    (delete-other-windows)))

(global-set-key (kbd "C-c z") #'my/window-zoom-toggle)
