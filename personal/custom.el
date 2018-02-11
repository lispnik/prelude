(beacon-mode -1)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package restclient
  :ensure t
  :config
  (use-package restclient-test :ensure t)
  (use-package company-restclient :ensure t))

(use-package clj-refactor
  :ensure t
  :config
  (add-hook 'clojure-mode-hook
            '(lambda ()
               (clj-refactor-mode 1)
               (yas-minor-mode 1))))

(when (eq window-system 'ns)
  (setq mac-command-modifier 'meta
        mac-option-modifier 'super))

(setq cider-repl-display-help-banner nil
      cider-cljs-lein-repl
      "(cond
  (resolve 'user/run) ;; Chestnut projects
  (eval '(do (user/run)
             (user/browser-repl)))
  (try
    (require 'figwheel-sidecar.repl-api)
    (resolve 'figwheel-sidecar.repl-api/start-figwheel!)
    (catch Throwable _))
  (eval '(do (figwheel-sidecar.repl-api/start-figwheel!)
             (figwheel-sidecar.repl-api/cljs-repl)))
  (try
    (require 'cemerick.piggieback)
    (resolve 'cemerick.piggieback/cljs-repl)
    (catch Throwable _))
  (eval '(cemerick.piggieback/cljs-repl (cljs.repl.rhino/repl-env)))
  :else
  (throw (ex-info \"Failed to initialize CLJS repl. Add com.cemerick/piggieback and optionally figwheel-sidecar to your project.\" {})))")

(setq default-directory "~/")

(when (member window-system '(ns w32))
  (menu-bar-mode 1))

(when (member window-system '(ns w32))
  (menu-bar-mode 1))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fixedsys" :foundry "raster" :slant normal :weight normal :height 113 :width normal)))))
