(add-hook 'python-mode-hook
          (lambda()
            (pyenv-mode-set "emacsenv")))

(setq flycheck-python-pycompile-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")
(setq flycheck-json-python-json-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")
(setq flycheck-python-flake8-executable "/Users/sampathsurineni/.pyenv/versions/emacsenv/bin/python")

(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "<C-backspace>") 'sp-backward-delete-word)
(global-set-key (kbd "C-d") 'sp-delete-word)
;; beacon
;; (setq beacon-blink-when-window-scrolls nil)
(global-set-key (kbd "M-l") 'beacon-blink)
(setq beacon-color "cyan")
(setq beacon-blink-when-focused t)
;; helm

;; key chord mode
;; (key-chord-define-global "uu" nil)

(require 'magit)
(define-key magit-file-section-map (kbd "C-j") nil)
(global-set-key (kbd "C-j") 'helm-mini)
(global-set-key (kbd "C-o") 'helm-find-files) ; finding files

(global-set-key (kbd "C-z") 'undo-tree-undo)

(setq minions-mode t)
(require 'smartparens)
(global-set-key (kbd "C-h") 'helm-projectile-find-file)
(setq helm-buffer-max-length nil)

(define-key prelude-mode-map (kbd "M-o") nil)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-z") 'undo-tree-redo)

(global-set-key (kbd "s-f") 'deadgrep)
(global-set-key (kbd "s-s") 'save-buffer)
(global-nlinum-mode -1)
(require 'org)
(setq org-edit-src-content-indentation 0)
(setq org-startup-truncated nil)


(define-key org-mode-map (kbd "C-j") nil)
(define-key lisp-interaction-mode-map (kbd "C-j") nil)
(set-face-attribute 'default nil :height 160)
(pyenv-mode-set "emacsenv")

;; web mode
(setq web-mode-engines-alist
      '(("django"    . "\\.html\\'")
        ("blade"  . "\\.blade\\."))
      )
;; (add-hook 'python-mode-hook 'yapf-mode)
(yas-global-mode 1)
(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "M-;") 'yas-expand)
