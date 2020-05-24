;; Switch to the new window after splitting
(setq evil-split-window-below t
      evil-vsplit-window-right t)


;; Silence all that useless output
(setq direnv-always-show-summary nil)


;; do not display line number
(setq display-line-numbers-type nil)


;; History & backup settings (save nothing, that's what git is for)
(setq auto-save-default nil
      create-lockfiles nil
      history-length 500
      make-backup-files nil)