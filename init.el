(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'sr-speedbar)

(add-to-list 'load-path "~/.emacs.d/elisp/nyan-mode-master")
(require 'nyan-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(ansi-color-faces-vector
  ; [default default default italic underline success warning error])
 ;'(ansi-color-names-vector
  ; ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 ;'(custom-enabled-themes (quote (deeper-blue))))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)

;; line numbers on the sie
(global-linum-mode)
(setq column-number-mode t)

;;disable arrow keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

;;programming column indicator
(require 'fixme-mode)
(add-hook 'prog-mode-hook 'fixme-mode)

;;melpa package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stnable.melpa.org/packages/") t)


;;;;;;;;;;;;;;;;;;; MAGIT STUFF ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;;;;;;;;;;;;;;;;;;; FILESYSTEM ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "s-t") 'sr-speedbar-toggle)
(global-set-key (kbd "s-s") 'sr-speedbar-select-window)

;;;;;;;;;;;;;;;;;; NYAN CAT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook 'nyan-mode)

;;;;;;;;;;;;;;;;;; AUTOCOMPLETE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook 'global-company-mode)


;;;;;;;;;;;;;;;;;;; THEME ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)


;;;;;;;;;;;;;;;;;;; spelling grammar ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'org-mode-hook (lambda ()
   (progn
     ;; Snipped
     (auto-fill-mode t)

     ;; Spelling
     (flyspell-mode t)

     ;; Grammar
     (require 'langtool)
     (setq langtool-language-tool-jar "/path/to/LanguageTool.jar"))))


;;;;;;;;;;;;;;;;;;;;; COLUMN ENFORCE MODE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'column-enforce-mode)
(add-hook 'prog-mode-hook 'column-enforce-mode)

;;;;;;;;;;;;;;;;;;;;PARENT SHIT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'show-paren-mode)

;;;;;;;;;;;;;;;;;;;; JS INDENT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq js-indent-level 2)


(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
