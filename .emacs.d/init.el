;; load and configure package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Install Org-mode
(use-package org
  :ensure t)

;; Load org-based configuration
(org-babel-load-file (expand-file-name "martin.org" user-emacs-directory))
(garbage-collect)

;; Keep customized settings out of Git
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)
