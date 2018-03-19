;;Python Settings
(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;;;;;;;;;;;TeX引擎的配置;;;;;;;;;;;;;;
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook (lambda()
       (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
       (setq TeX-command-default "XeLaTeX")
       (setq TeX-save-query  nil )
       (setq TeX-show-compilation t)))
(add-hook 'c-mode-common-hook
	  '(lambda ()
	    (require 'xcscope)))

;;;;;;;;将第三方插件路径加入emacs搜索路径中;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/plugins/bbdb")
(require 'window-numbering)
(window-numbering-mode 1)
(require 'uncrustify)
;;;;;;;;下面加载的是自己写的配置文件;;;;;;;;
(load-file "~/.emacs.d/lisp/keybindings.el")
(load-file "~/.emacs.d/lisp/gnus.el")
(load-file "~/.emacs.d/lisp/pal-bbdb.el")
(setq cquery-executable "~/doc/demacia/cquery/build/release/bin/cquery")
(add-hook 'c-mode-hook  (lsp-cquery-enable))
