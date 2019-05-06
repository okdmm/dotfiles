(use-package evil
             :ensure t
             :defer .1
             :init
             (setq evil-search-module 'evil-search)
             (setq evil-ex-complete-emacs-commands nil)
             (setq evil-vsplit-window-right t) ;; like vim's 'splitright'
             (setq evil-split-window-below t) ;; like vim's 'splitbelow'
             (setq evil-shift-round nil)
             (setq evil-want-C-u-scroll t)
             (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
             (setq evil-want-keybinding nil)
             :config
             (evil-mode)
             (define-key evil-insert-state-map "jj" `evil-normal-state)
             )

(use-package evil-collection
             :after evil
             :ensure t
             :config
             (evil-collection-init))

(use-package evil-matchit
             ;;press "%" to jump between tag pair
             :ensure t
             :config
             (global-evil-matchit-mode 1))

(use-package evil-surround
             :ensure t
             :commands
             (evil-surround-edit
               evil-Surround-edit
               evil-surround-region
               evil-Surround-region)
             :init
             (evil-define-key 'operator global-map "s" 'evil-surround-edit)
             (evil-define-key 'operator global-map "S" 'evil-Surround-edit)
             (evil-define-key 'visual global-map "S" 'evil-surround-region)
             (evil-define-key 'visual global-map "gS" 'evil-Surround-region))
