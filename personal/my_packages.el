(prelude-require-packages '(avy deadgrep
                                default-text-scale
				     monokai-theme
                                     yasnippet yasnippet-snippets))



;; global
(global-unset-key (kbd "C-z"))

;; avy
(global-set-key (kbd "C-;") 'avy-goto-char-timer)


;; company-mode
(setq company-idle-delay 0)
(define-key company-mode-map (kbd "<backtab>") 'company-complete)
;; (define-key python-mode-map (kbd "<backtab>") nil)
;; dead grep

(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'split-window-below)
(global-set-key (kbd "C-\\") 'split-window-right)
(global-set-key (kbd "C-/") 'comment-line)

(global-set-key (kbd "C-b") 'backward-word)
(global-set-key (kbd "C-f") 'forward-word)

(global-set-key (kbd "C-h") 'helm-projectile-find-file)
(global-set-key (kbd "C-j") 'helm-mini)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-o") 'find-file) ; finding files
(global-set-key (kbd "C-q") 'hippie-expand)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "M-/") 'comment-dwim);for commenting and uncommenting
(global-set-key (kbd "M-a") 'beginning-of-buffer)
(global-set-key (kbd "M-b") 'backward-char)
(global-set-key (kbd "M-d") 'delete-char)
(global-set-key (kbd "M-e") 'end-of-buffer)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-f") 'forward-char)

(global-set-key (kbd "s-f") 'deadgrep)

(define-key lisp-interaction-mode-map (kbd "C-j") nil)


(default-text-scale-mode t)
(global-hl-line-mode -1)

(yas-global-mode 1)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")
(setenv "PYTHONIOENCODING" "utf-8")
(set-default-coding-systems 'utf-8)
