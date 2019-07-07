(use-package ddskk
  :ensure t
  :defer t
  :bind ((
          "C-x j" . skk-mode
          ))
  :custom
  (skk-user-directory "~/Dropbox/myskk")
  (skk-init-file "~/Dropbox/myskk/init")
  (skk-share-private-jisho t)
  (skk-server-host "localhost")        
  (skk-server-portnum 1178)            ;
  (skk-large-jisho "~/Dropbox/myskk/SKK-JISHO.L")
  (skk-egg-like-newline t)             ; 変換時にリターンでは改行しない
  (skk-japanese-message-and-error t)   ; メッセージを日本語にする
  (skk-auto-insert-paren t)            ; 対応する括弧を自動挿入
  (skk-check-okurigana-on-touroku t)   ;)
  (skk-show-candidates-always-pop-to-buffer t) ; 変換候補の表示位置
  (skk-henkan-show-candidates-rows 2) ; 候補表示件数を2列に
  (skk-use-act t)
  :config
  (define-globalized-minor-mode global-skk-mode skk-mode
    (lambda () (skk-latin-mode 1)))
  (global-skk-mode)

  ;; to set C-j to evil-ex state
  ;; ref: https://emacs.stackexchange.com/questions/14163/
  (general-define-key :keymaps '(evil-ex-completion-map)
                      "C-j" 'skk-kakutei)

  ;; to return skk-latin-mode when entrying/exiting from insert-state
  (add-hook 'evil-insert-state-entry-hook 'skk-latin-mode-on)
  (add-hook 'evil-insert-state-exit-hook 'skk-latin-mode-on)

  ;; priority to skk-j-mode-map over any minor mode map
  ;; as default, haskell-mode binds ";" that I want to be 'skk-kakutei
  ;; ref: https://github.com/haskell/haskell-mode/issues/1320
  (defun skk-j-overrideing-minor ()
    (add-to-list 'minor-mode-overriding-map-alist
                 `(skk-j-mode . ,skk-j-mode-map)))
  (add-hook 'skk-mode-hook 'skk-j-overrideing-minor)
  )

