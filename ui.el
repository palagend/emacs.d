;; 定制emacs的UI
(setq frame-title-format "欢迎来到emacs之家")
(global-linum-mode)
;(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode)
(display-time-mode)
(setq display-time-24hr-format t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq visible-bell t)
;(setq make-backup-files nil)
;; all backups goto ~/.backups instead in the current directory
(setq backup-directory-alist (quote (("." . "~/.backups"))))
;;tab 改为插入空格
(setq-default indent-tabs-mode nil) 
;;c c++ 缩进4个空格
(setq c-basic-offset 4)
;;没有这个 { } 就会瞎搞
(setq c-default-style "linux")
(setq default-tab-width 4)
(setq server-auth-dir "/d/")
(setq server-name "emacs-server-file")
(server-start)

;;添加undo-tree支持
(require 'undo-tree)
(global-undo-tree-mode)

;; 添加全局补全支持
(autopair-global-mode)
(global-auto-complete-mode 1)

;;指定编码为utf-8
(prefer-coding-system 'utf-8)

;; 启动全屏的快捷键
(global-set-key (kbd "M-<return>") 'pal-fullscreen)
;;全屏
(defun pal-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;(run-with-idle-timer 1 nil 'pal-fullscreen) 
