;;; $DOOMDIR/+ui.el -*- lexical-binding: t; -*-

;; =======================================================================
;; UI variables
;; =======================================================================

;; To disable font smoothing, run
;; defaults write org.gnu.Emacs AppleFontSmoothing -int 0
;;
(setq felix/default-font "Ellograph CF"
      felix/default-font-size 13
      felix/default-font-weight 'ultra-light
      felix/ui-font "Agave"
      felix/ui-font-size 12
      felix/ui-font-weight 'normal
      felix/mode-line-height 0.95)

(setq doom-theme 'doom-miramare
      doom-themes-enable-bold t
      doom-themes-enable-italic t
      doom-font (font-spec :family felix/default-font :size felix/default-font-size :weight felix/default-font-weight)
      doom-variable-pitch-font (font-spec :family felix/ui-font :size felix/ui-font-size :weight felix/ui-font-weight)
      all-the-icons-scale-factor 0.9)

;; configure nord-theme
;; (after! nord-theme
;;   (setq nord-uniform-mode-lines nil
;;         nord-region-highlight "frost"))


;; disable shortmenu
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)


;; uniformize doom-modeline style
(after! doom-modeline
  (display-battery-mode 1)
  (setq doom-modeline-lsp nil)
  (setq doom-modeline-env-version t))

(custom-set-faces!
  `(font-lock-comment-face :slant italic)
  `(font-lock-keyword-face :slant normal)
  `(treemacs-root-face :family ,felix/ui-font :size ,felix/ui-font-size :weight ,felix/ui-font-weight)

  ;; https://discordapp.com/channels/406534637242810369/603399769015975996/765837027152363550
  `((mode-line
     mode-line-buffer-id
     mode-line-emphasis
     mode-line-highlight
     mode-line-inactive
     doom-modeline-bar
     doom-modeline-bar-inactive
     doom-modeline-battery-charging
     doom-modeline-battery-critical
     doom-modeline-battery-error
     doom-modeline-battery-full
     doom-modeline-battery-normal
     doom-modeline-battery-warning
     doom-modeline-buffer-file
     doom-modeline-buffer-major-mode
     doom-modeline-buffer-minor-mode
     doom-modeline-buffer-modified
     doom-modeline-buffer-path
     doom-modeline-buffer-timemachine
     doom-modeline-debug
     doom-modeline-debug-visual
     doom-modeline-evil-emacs-state
     doom-modeline-evil-insert-state
     doom-modeline-evil-motion-state
     doom-modeline-evil-normal-state
     doom-modeline-evil-operator-state
     doom-modeline-evil-replace-state
     doom-modeline-evil-visual-state
     doom-modeline-highlight
     doom-modeline-host
     doom-modeline-info
     doom-modeline-input-method
     doom-modeline-input-method-alt
     doom-modeline-lsp-error
     doom-modeline-lsp-running
     doom-modeline-lsp-success
     doom-modeline-lsp-warning
     doom-modeline-panel
     doom-modeline-persp-buffer-not-in-persp
     doom-modeline-project-dir
     doom-modeline-project-parent-dir
     doom-modeline-project-root-dir
     doom-modeline-repl-success
     doom-modeline-repl-warning
     doom-modeline-spc-face
     doom-modeline-unread-number
     doom-modeline-urgent
     doom-modeline-warning)
    :family ,felix/ui-font :height ,felix/mode-line-height :weight ,felix/ui-font-weight))


;; https://www.fileformat.info/info/unicode/category/Sm/list.htm
(plist-put! +ligatures-extra-symbols
  :and           "⋀"
  :or            "⋁"
  :return        "🌊")
