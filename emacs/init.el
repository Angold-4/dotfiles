(setq inhibit-startup-message t)

(setq mac-option-modifier 'meta) ; set alt-key to meta
(setq mac-escape-modifier nil) ; set esc-key to nil

;; Set up the visible bell
(setq visible-bell t)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
