(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'split-window-below)
(global-set-key (kbd "C-\\") 'split-window-right)
(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "C-/") 'comment-line)

(global-set-key (kbd "C-b") 'backward-word)
;; TODO: find out what is default mapping in prelude
(global-set-key (kbd "C-d") 'sp-delete-word)
(global-set-key (kbd "C-f") 'forward-word)

(global-set-key (kbd "C-h") 'helm-projectile-find-file)
(global-set-key (kbd "C-j") 'helm-mini)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-o") 'helm-find-files) ; finding files
(global-set-key (kbd "C-q") 'hippie-expand)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-w") 'easy-kill)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "M-/") 'comment-dwim);for commenting and uncommenting
(global-set-key (kbd "M-a") 'beginning-of-buffer)
(global-set-key (kbd "M-b") 'backward-char)
(global-set-key (kbd "M-d") 'delete-char)
(global-set-key (kbd "M-e") 'end-of-buffer)
(define-key prelude-mode-map (kbd "M-o") nil)

(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-f") 'forward-char)
(global-set-key (kbd "M-w") 'kill-region)

(global-set-key (kbd "s-f") 'deadgrep)

(require 'org)
(define-key org-mode-map (kbd "C-j") nil)
(define-key lisp-interaction-mode-map (kbd "C-j") nil)
