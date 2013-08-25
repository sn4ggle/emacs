;; add .emacs.d/elpa to load path
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
(when (not(package-installed-p 'melpa))
package-refresh-contents)

;; check if packages are installed; if not, install them
(mapc (lambda (package) (or (package-installed-p package) (if (y-or-n-p (format "package %s is missing. Install it?" package)) (package-install package)))) '(auto-complete yasnippet smooth-scrolling magit ;; add packages to this list
))

;; import packages
(require 'smooth-scrolling)

(global-auto-complete-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Hides extraneous crap (menu bar, tool bar and scroll bar)
(menu-bar-mode -1) (tool-bar-mode -1) (scroll-bar-mode -1)


;; Adds line numbers in margin of buffers
(global-linum-mode 1)


;; Tets Ido ("interactively do things") mode
;; Type part of name and Ido with automatically narrows list
;; to matching results so you can scroll through
;; Type C-f to revert to old-style completion engine
(ido-mode 1)
(setq ido-enable-flex-matching t)
;; Allows Ido mode to work with C-x C-f (find files)
(setq ido-everywhere t)







