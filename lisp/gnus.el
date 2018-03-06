(setq gnus-startup-file "~/Gnus/.newsrc")                  ;初始文件
(setq gnus-default-directory "~/Gnus/")                    ;默认目录
(setq gnus-home-directory "~/Gnus/")                       ;主目录
(setq gnus-dribble-directory "~/Gnus/")                    ;恢复目录
(setq gnus-directory "~/Gnus/News/")                       ;新闻组的存储目录
(setq gnus-article-save-directory "~/Gnus/News/")          ;文章保存目录
(setq gnus-kill-files-directory "~/Gnus/News/trash/")      ;文件删除目录
(setq gnus-agent-directory "~/Gnus/News/agent/")           ;代理目录
(setq gnus-cache-directory "~/Gnus/cache/")           ;缓存目录
(setq gnus-cache-active-file "~/Gnus/cache/active")   ;缓存激活文件

(setq message-directory "~/Gnus/Mail/")                    ;邮件的存储目录
(setq message-auto-save-directory "~/Gnus/Mail/drafts")         ;自动保存的目录
(setq mail-source-directory "~/Gnus/Mail/incoming")        ;邮件的源目录
(setq nnmail-message-id-cache-file "~/Gnus/.nnmail-cache") ;nnmail的消息ID缓存

;; 保留已发邮件
;; 在 group buffer 里键入`G m'，然后输入组名"sent-mail", 接着是输入"nnfolder", 这个组就建好了，然后用同样的方式建立"sent-news"组。
;; (setq gnus-message-archive-group
;; 	'((if (message-news-p)
;; 	      "sent-news"
;; 	    "sent-mail")))

(setq user-full-name "palagend")
(setq user-mail-address "palagend@163.com")

(setq gnus-select-method '(nnfolder ""))
(setq mail-source-delete-incoming t)

;; 邮件分组策略
(setq nnmail-split-methods '(
		("mail.personal" "From:.*palagend")
		("mail.misc" "")))

;; 设置过期邮件保留时间,
;; (setq nnmail-expiry-wait 'immediate)

(setq gnus-secondary-select-methods nil)
;; (add-to-list 'gnus-secondary-select-methods '(nntp "news.newsfan.net"))

(setq mail-sources
'((pop :server "pop.163.com"
       :user "palagend@163.com"
       :port "pop3"
       :password "knight4PRC")))

(setq send-mail-function 'smtpmail-send-it)
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-smtp-server "smtp.163.com")
(setq smtpmail-default-smtp-server "smtp.163.com")

(setq gnus-check-new-newsgroups 'ask-server)
(setq gnus-save-killed-list nil)

;; (set-language-environment 'Chinese-GBK) 
(setq gnus-default-charset 'utf-8
   gnus-group-name-charset-group-alist '((".*" . utf-8))
   gnus-summary-show-article-charset-alist
       '((1 . chinese-iso-8bit)
         (2 . gbk)
         (3 . big5)
         (4 . utf-8))
   gnus-newsgroup-ignored-charsets 
       '(unknown-8bit x-unknown iso-8859-1))

;; * 键，帖子被拷贝到本地的 cache 中保存起来，再次 Meta-* 取消
(setq gnus-use-cache 'passive)
;; 可以保留同主体中已读邮件，把 'some 改为t可以下载所有文章
(setq gnus-fetch-old-headers 'some)
;; customize gnus group line format
(setq gnus-group-line-format "%P%M%S[%5t]%5y : %(%g%)\n")

;; customzie gnus UI
(gnus-add-configuration
 '(article
   (horizontal 1.0
	       (vertical 25 (group 1.0))
	       (vertical 1.0
			 (summary 0.16 point)
			 (article 1.0)))))

(gnus-add-configuration
 '(summary
   (horizontal 1.0
	       (vertical 25 (group 1.0))
	       (vertical 1.0 (summary 1.0 point)))))
(gnus-demon-add-scanmail)

