;;; $DOOMDIR/+bindings.el -*- lexical-binding: t; -*-

;; Unbind prefixes
(map! :n "r" nil)
(map! :map evil-snipe-mode-map :nmo "S" nil)


;; Simple sugar
(map!
 :nv "S" #'save-buffer
 :nv "F" #'avy-goto-char-timer
 :nv "J" #'evil-scroll-down
 :nv "K" #'evil-scroll-up
 :nv "gx" #'browse-url
 :nv "rr" #'evil-ex-nohighlight
 :nv "rb" #'revert-bufferm
 :nv "rc" #'lsp-workspace-restart)

;; Easier navigation
(map!
 :ne "C-h"   #'evil-window-left
 :ne "C-l"   #'evil-window-right
 :ne "C-j"   #'evil-window-down
 :ne "C-k"   #'evil-window-up
 :ne "s-h"   #'+workspace/switch-left
 :ne "s-l"   #'+workspace/switch-right
 :ne "s-n"   #'+workspace/new
 :ne "s-w"   #'+workspace/close-window-or-workspace
 :ne "s-r"   #'+workspace/rename)
(map! :leader
      "o o" #'dired-jump
      "o O" #'projectile-dired)

(map! :after ranger
      (:map ranger-mode-map
       [escape] #'ranger-close ))

;; Add org-agenda keybindings
(map! :after evil-org-agenda
      (:map evil-org-agenda-mode-map :m "S" nil)
      (:map org-agenda-mode-map
       "S"     #'org-save-all-org-buffers
       "C-h"   #'evil-window-left
       "C-l"   #'evil-window-right
       "s-h"   #'+workspace/switch-left
       "s-l"   #'+workspace/switch-right
       "s-n"   #'+workspace/new
       "s-w"   #'+workspace/close-window-or-workspace
       "s-r"   #'+workspace/rename))

;; Easier window split
(map! :leader
      "\\" #'evil-window-vsplit
      "-" #'evil-window-split)

;; Ace window
(map! :leader "w w" #'ace-window)

;; Elfeed;
(map! :leader "e l" #'elfeed)

;; toggle LSP Doc
(map! :leader "h h" #'lsp-describe-thing-at-point)

;; where smartparens lives, summon some cleverness
;; Ma, I can now slurp and barf as i pleased T_T
(add-hook 'smartparens-mode-hook #'evil-cleverparens-mode)
