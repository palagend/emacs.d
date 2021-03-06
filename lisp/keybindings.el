;; Overlap the sys default keybindings
(global-set-key (kbd "C-x k") 'kill-buffer-and-window)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;;;;;;;;;;;;;;;;;;;;;;;;Customized Keybindings;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c C-p") 'project-find-file)
;;Plugin project-explorer
(global-set-key (kbd "C-c p f") 'project-explorer-helm)
(global-set-key (kbd "C-c p p") 'project-explorer-toggle)

;; Plugin multi terminal
(global-set-key (kbd "C-M-;") 'multi-term)
