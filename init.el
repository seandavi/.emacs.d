(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (elpy-enable)
  )

(projectile-global-mode)

; recentf mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

; (autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
; (add-to-list 'auto-mode-alist'("\.markdown\'" . markdown-mode))
; (add-to-list ’auto-mode-alist'("\.md\'" . markdown-mode))
(require 'poly-R)
(require 'poly-markdown)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(elpy-rpc-python-command "/Users/sdavis2/.pyenv/shims/python"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'auto-complete)
(global-auto-complete-mode)
(require 'auto-complete-config)
(ac-config-default)
(require 'ess-site)
(setq ess-use-auto-complete t)
(setq ac-auto-start 2)
(setq ac-auto-show-menu 0.2)
(ess-toggle-underscore nil)
