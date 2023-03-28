(add-to-list 'custom-theme-load-path ".emacs.d/themes/")

(load-theme 'doom-opera t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'package)
;; (add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" default))
 '(package-selected-packages
   '(toc-org org-rainbow-tags doom-themes auto-complete org-auto-tangle)))

(ac-config-default)

(add-hook 'org-mode-hook 'toc-org-mode)

(add-hook 'org-mode-hook 'org-indent-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 2.0))))
 '(org-level-2 ((t (:inherit outline-1 :height 1.8))))
 '(org-level-3 ((t (:inherit outline-1 :height 1.6))))
 '(org-level-4 ((t (:inherit outline-1 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-1 :height 1.2))))
 '(org-level-6 ((t (:inherit outline-1 :height 1.1)))))

(add-hook 'org-mode-hook 'org-rainbow-tags-mode)
