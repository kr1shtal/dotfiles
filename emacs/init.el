;; Performance tweaks for modern machines
(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)
(setq read-process-output-max (* 1024 1024))

;; Theme
(load-theme 'catppuccin t)

;; Appereance
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

(column-number-mode)
(hl-line-mode)
(global-display-line-numbers-mode)
;; (global-visual-line-mode)

;; Brackets
(show-paren-mode)
(electric-pair-mode)

(display-time)

(delete-selection-mode)

;; Ido mode
;; (setq ido-everywhere t)
(ido-mode t)

(set-face-attribute 'default nil
            :font "JetBrains Mono"
            :height 140
            :weight 'medium)

;; No ringbell, no startup message
(setq ring-bell-function 'ignore
      inhibit-startup-message t
      initial-scratch-message nil
      use-file-dialog nil)

;; No backups
(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)

;; Indentation
(setq default-tab-width 4)

;;(setq-default tab-width 4)
;;(setq-default indent-tabs-mode nil)
;;(setq tab-width 4)
;;(setq tab-always-indent t)
;;(setq indent-tabs-mode nil)

;; Encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Life is too short
(setq use-short-answers t)
;; For older versions
(defalias 'yes-or-no-p 'y-or-n-p)

;; ESC for quit
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Default directory
(setq default-directory "C:/Dev/")

;; Window title
;; (setq frame-title-format "%b")

;;; Custom ;;;

;; Show when file modified
(setq frame-title-format
      '((:eval (if (buffer-file-name)
		   '("%b - " system-name "@Emacs " emacs-version)
                 (abbreviate-file-name (buffer-file-name))
                 "%b"))
	(:eval (if (buffer-modified-p)
                   " •"))
       )
)

;; Startup stuff
(defun window-layout()
  (add-to-list 'initial-frame-alist '(fullscreen . maximized))
  (split-window-horizontally)
  (other-window 1)
  (find-file "C:/Dev/todo.txt")
  (other-window 1))
(add-hook 'emacs-startup-hook 'window-layout)

;; Open Eshell on key
(defun open-console()
  (interactive)
  (split-window-horizontally)
  (other-window 1)
  (eshell))
(global-set-key [f8] 'open-console)

;; Open config file
(defun open-config()
  (interactive)
  (split-window-horizontally)
  (other-window)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-c c") 'open-config)

;;; End ;;;

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Dashboard
(use-package dashboard
  :ensure t
  :config
  (setq	dashboard-center-content t
	dashboard-vertically-center-content t)
  (dashboard-setup-startup-hook))

;; Company
(use-package company
  :ensure t
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.01)
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection))
  :config
  (global-company-mode))

;; LSP Mode
(use-package lsp-mode
  :ensure t
  :commands lsp
  :custom
  (gc-cons-threshold 100000000)
  (read-process-output-max (* 1024 1024))
  (lsp-idle-delay 0.500)
  (lsp-log-io nil)
  :hook ((c-mode . lsp)
	 (c++-mode . lsp)
	 (python-mode . lsp)))

;; LSP UI
;; (use-package lsp-ui
;;   :ensure t
;;   :after lsp-mode
;;   :custom
;;   (lsp-ui-doc-show-with-cursor t))

;; Pyright
(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright")
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))

;; Neotree
(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))

;; Magit
;;(use-package magit
;;  :ensure t)

;; Flycheck
;; (use-package flycheck
;;  :ensure t
;;  :config
;;  (add-hook 'after-init-hook #'global-flycheck-mode))

;; Emmet Mode
(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

;; Emacs Start Up Profiler
(use-package esup
  :ensure t
  :config
  (setq esup-depth 0)
  :pin melpa)

(custom-set-variables
 '(package-selected-packages
   '(catppuccin-theme dashboard company lsp-mode lsp-pyright neotree emmet-mode esup)))
(custom-set-faces)