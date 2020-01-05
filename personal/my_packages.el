(prelude-require-packages '(deadgrep default-text-scale
				     monokai-theme
                                     yasnippet))

(yas-global-mode 1)
;; global
(global-unset-key (kbd "C-z"))
;; company-mode
(setq company-idle-delay 0)

;; dead grep
(global-set-key (kbd "s-f") 'deadgrep)

(default-text-scale-mode t)
(global-hl-line-mode -1)
