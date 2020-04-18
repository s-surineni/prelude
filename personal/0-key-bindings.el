(global-set-key (kbd "RET") 'newline-and-indent)


(global-set-key (kbd "C--") 'split-window-below)
(global-set-key (kbd "C-\\") 'split-window-right)
(global-set-key (kbd "C-/") 'comment-line)

(global-set-key (kbd "C-b") 'backward-word)

;; TODO: find out what is default mapping in prelude
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-q") 'hippie-expand)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-w") 'easy-kill)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "M-/") 'comment-dwim);for commenting and uncommenting
(global-set-key (kbd "M-a") 'beginning-of-buffer)
(global-set-key (kbd "M-b") 'backward-char)
(global-set-key (kbd "M-d") 'delete-char)
(global-set-key (kbd "M-e") 'end-of-buffer)


(global-set-key (kbd "M-f") 'forward-char)
(global-set-key (kbd "M-w") 'kill-region)



