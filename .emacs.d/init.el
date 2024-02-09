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

;; Configure use-package
(eval-and-compile
  (setq use-package-always-ensure t ; No need to :ensure t all packages
        use-package-expand-minimally t))

;; Install Org-mode
(use-package org)

;; Load org-based configuration
(org-babel-load-file (expand-file-name "martin.org" user-emacs-directory))
(garbage-collect)

;; Keep customized settings out of Git
(setq custom-file (expand-file-name "emacs-custom.el" user-emacs-directory))
(load custom-file)
