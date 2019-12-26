(prelude-require-packages '(deadgrep))


;; global
(global-unset-key (kbd "C-z"))
;; company-mode
(setq company-idle-delay 0)

;; dead grep
(global-set-key (kbd "s-f") 'deadgrep)
