(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "<C-backspace>") 'sp-backward-delete-word)
(global-set-key (kbd "C-d") 'sp-delete-word)
(require 'magit)
(define-key magit-file-section-map (kbd "C-j") nil)
(global-set-key (kbd "C-j") 'helm-mini)
(global-set-key (kbd "C-o") 'helm-find-files) ; finding files

(require 'smartparens)
(global-set-key (kbd "C-h") 'helm-projectile-find-file)

(define-key prelude-mode-map (kbd "M-o") nil)
(global-set-key (kbd "M-o") 'ace-window)

(global-set-key (kbd "s-f") 'deadgrep)


(require 'org)
(setq org-edit-src-content-indentation 0)
(define-key org-mode-map (kbd "C-j") nil)
(define-key lisp-interaction-mode-map (kbd "C-j") nil)
