(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'fill-column-indicator)
(require 'fixme-mode)
(require 'sr-speedbar)

(add-to-list 'load-path "~/.emacs.d/elisp/nyan-mode-master")
(require 'nyan-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; line numbers on the sie
(global-linum-mode)
(setq column-number-mode t)

;;disable arrow keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

;;programming column indicator
(add-hook 'prog-mode-hook 'fci-mode)
(add-hook 'prog-mode-hook 'fixme-mode)

;;melpa package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stnable.melpa.org/packages/") t)


;;;;;;;;;;;;;;;;;;; MAGIT STUFF ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;;;;;;;;;;;;;;;;;;; FILE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)


;;;;;;;;;;;;;;;;;; NYAN CAT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook 'nyan-mode)
