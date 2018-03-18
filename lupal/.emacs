;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(canlock-password "39b447105a739345f2e8fc12e1878ca292b87c3d")
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.emacs-china.org/gnu/")
     ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
     ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
 '(package-selected-packages
   (quote
    (cquery multi-term myterminal-controls flycheck py-autopep8 better-defaults elpy markdown-mode ac-etags autopair project-explorer magit helm material-theme undo-tree auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-file "~/.emacs.d/ui.el")
(load-file "~/.emacs.d/init.el")
