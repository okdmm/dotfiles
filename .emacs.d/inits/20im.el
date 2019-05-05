(use-package ddskk
             :ensure t
             :defer t
             :bind ("C-x C-j" . skk-mode)
             :custom
             (skk-user-directory "~/Dropbox/myskk")
             (skk-init-file "~/Dropbox/myskk/init")
             (skk-share-private-jisho t)
             (skk-server-host "localhost")        ;
             (skk-server-portnum 1178)            ;
             (skk-egg-like-newline t)             ; 変換時にリターンでは改行しない
             (skk-japanese-message-and-error t)   ; メッセージを日本語にする
             (skk-auto-insert-paren t)            ; 対応する括弧を自動挿入
             (skk-check-okurigana-on-touroku t)   ;)
             (skk-large-jisho "~/Dropbox/myskk")
             (skk-show-candidates-always-pop-to-buffer t) ; 変換候補の表示位置
             (skk-henkan-show-candidates-rows 2) ; 候補表示件数を2列に
             )

