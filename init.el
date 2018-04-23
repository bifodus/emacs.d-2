
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))
(setq backup-directory-alist `(("." . "~/.saves")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(package-selected-packages
   (quote
    (whole-line-or-region neotree helm dracula-theme Projectile magit avy org)))
 '(winner-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "M-o") 'other-window)
(windmove-default-keybindings)
(menu-bar-mode -1)
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-auto-revert-mode t)
(setq org-log-done t)
(add-to-list 'custom-theme-load-path "~.emacs.d/themes/")
(load-theme 'dracula t)
(add-to-list 'load-path "~/neotree")
(add-to-list 'load-path "~/projectile")
(require 'projectile)
(projectile-global-mode)
(require 'neotree)
(require 'helm-config)
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq projectile-enable-caching t)
(global-set-key [f8] 'neotree-toggle)
(global-linum-mode t)
(global-set-key (kbd "M-i") 'imenu)
(setq ido-enable-flex-matching t)
(ido-mode 1)
(setq ido-everywhere t)
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
	(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")))
(setq org-default-notes-file (concat org-directory "~/org/organizer.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
(global-set-key (kbd "C-c o")
		(lambda () (interactive) (find-file "~/organizer.org")))
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))
