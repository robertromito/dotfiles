;; Rob's emacs config

;; No menu bar
(menu-bar-mode -1)

;; Break lines at 80 chars by default
(setq-default column-number-mode t)
(setq-default fill-column 80)
(setq-default auto-fill-mode t)

;; Org mode setup
(add-to-list 'auto-mode-alist '("\\.md\\'" . org-mode))
(add-hook 'org-mode-hook 'auto-fill-mode)

;; Default font
(add-to-list 'default-frame-alist
	     '(font . "Fira Code"))

;; Have emacs put the ~ backup files into a single directory
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;; Settings done through Emacs UI
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight regular :height 113 :width normal)))))
