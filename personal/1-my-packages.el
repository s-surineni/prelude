(prelude-require-packages '(avy deadgrep
                                default-text-scale
                                hungry-delete
                                minions
                                monokai-theme
                                pyenv-mode
                                smart-mode-line
                                yapfify
                                yasnippet
                                yasnippet-snippets))


(setq prelude-format-on-save nil)
(setq prelude-clean-whitespace-on-save 1)
(require 'smartparens-config)

;; global
(global-unset-key (kbd "C-z"))

;; avy
(global-set-key (kbd "C-;") 'avy-goto-char-timer)


;; company-mode
(setq company-idle-delay 0)
;; (define-key company-mode-map (kbd "<backtab>") 'company-complete)
(define-key company-mode-map (kbd "M-j") 'company-complete)

(setq company-dabbrev-downcase nil)
;; (define-key python-mode-map (kbd "<backtab>") nil)
;; dead grep

;; smart model line related
(setq sml/no-confirm-load-theme t)
(sml/setup)


(setq rm-blacklist
      (format "^ \\(%s\\)$"
              (mapconcat #'identity
                         '("Eldoc"
                           "Fly.*"
                           "h"
                           "ws"
                           "WK"
                           "Projectile.*"
                           "PgLn"
                           "yas"
                           "guru"
                           "company"
                           "Helm"
                           "super-save"
                           "ivy"
                           "EditorConfig"
                           "SP")
                         "\\|")))
(default-text-scale-mode t)
(global-hl-line-mode -1)
(require 'hungry-delete)
(global-hungry-delete-mode)
(yas-global-mode 1)
(setq yas-snippet-dirs (append yas-snippet-dirs '("~/ironman/myemacs/snippets")))

(setq flycheck-python-pycompile-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")
(setq flycheck-json-python-json-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")
(setq flycheck-python-flake8-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")
;; (setq flycheck-python-flake8-executable "flake8")
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")
(setenv "PYTHONIOENCODING" "utf-8")
(set-default-coding-systems 'utf-8)
