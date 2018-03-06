;(require 'bbdb-loaddefs "/usr/local/share/emacs/site-lisp/bbdb-loaddefs.el")
(require 'bbdb-loaddefs )
(require 'bbdb )

(bbdb-initialize 'gnus 'message)
(bbdb-insinuate-message)
(add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
(setq bbdb-send-mail-style 'gnus)
(setq bbdb-file "~/nutstore/bbdb")
(setq bbdb-complete-name-full-completion t)
(setq bbdb-completion-type 'primary-or-name)
(setq bbdb-complete-name-allow-cycling t)
(setq
   bbdb-offer-save 1
   bbdb-use-pop-up t
   bbdb-electric-p t
   bbdb-popup-target-lines 1
   bbdb-phone-style nil)
