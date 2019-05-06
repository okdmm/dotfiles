(use-package evil
             :ensure t
             :defer .1
             :init
             (setq evil-want-integration nil) ;; required by evil-collection
             (setq evil-search-module 'evil-search)
             (setq evil-ex-complete-emacs-commands nil)
             (setq evil-vsplit-window-right t) ;; like vim's 'splitright'
             (setq evil-split-window-below t) ;; like vim's 'splitbelow'
             (setq evil-shift-round nil)
             (setq evil-want-C-u-scroll t)
             :config
             (evil-mode)
             )

(use-package evil-matchit
  ;;press "%" to jump between tag pair
  :config
  (global-evil-matchit-mode 1))

  (use-package evil-collection
    :after evil
    :ensure t
    :config
    (evil-collection-init))
