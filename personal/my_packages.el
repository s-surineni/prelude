(prelude-require-packages '(avy deadgrep
                                default-text-scale
				     monokai-theme
                                     yasnippet yasnippet-snippets))



;; global
(global-unset-key (kbd "C-z"))

;; avy
(global-set-key (kbd "C-:") 'avy-goto-char)

;; company-mode
(setq company-idle-delay 0)
(define-key company-mode-map (kbd "<backtab>") 'company-complete)
;; (define-key python-mode-map (kbd "<backtab>") nil)
;; dead grep

(global-set-key (kbd "s-f") 'deadgrep)

(default-text-scale-mode t)
(global-hl-line-mode -1)

(yas-global-mode 1)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")
(setenv "PYTHONIOENCODING" "utf-8")
