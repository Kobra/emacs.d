(org-mode)
(define-key org-mode-map "\C-cl" 'org-store-link)
(define-key org-mode-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-directory "~/Documents/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-agenda-files (list "~/Documents/org/agenda"))
(setq org-mobile-inbox-for-pull "~/Documents/org/flagged.org")
(setq org-support-shift-select t)
(setq org-completion-use-ido t)
(setq org-modules (quote (org-bbdb org-bibtex org-docview org-info org-jsinfo org-irc org-mac-message org-vm org-collector org-depend org-mac-iCal org-mac-link-grabber org-toc)))
(setq org-todo-keywords '((sequence "TODO(t)" "RESEARCH(r)" "|" "DONE(d)")
			  (sequence "PHONE(p)" "MEETING(m)" "ERRAND(e)" "|" "ENDED(n)")
			  (sequence "FEEDBACK(f)" "VERIFY(v)" "DELEGATED(g)" "|" "CLOSED(c)")
			  (sequence "|" "CANCELLED(l)")))
(setq org-fast-tag-selection-include-todo t)

;; Allow binding of lisp variables w/o permanent asking
(setq org-export-allow-BIND t)

(setq org-clock-persist t)
(org-clock-persistence-insinuate)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(provide 'org-kit)
