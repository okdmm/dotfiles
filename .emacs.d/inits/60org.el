(use-package org
             :defer t
             :init
             (setq org-diretcory "~/Dropbox/Org"
                   org-default-notes-file "notes.org"
                   org-agenda-files '("~/Dropbox/Org")
                   org-refile-targets '((org-agenda-files :maxlevel . 3))
                   org-log-done 'time
                   org-startup-truncated nil
                   org-use-speed-commands t
                   org-enforce-todo-dependencies t)
             :bind ("\C-cc" . 'org-capture)
             :config(setq org-capture-templates
                          '(("n" "Note" entry (file+headline "~/Dropbox/Org/notes.org" "Notes")
                             "* %?\nEntered on %U\n %i\n %a")
                            ))
             )

