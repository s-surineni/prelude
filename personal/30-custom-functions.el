(defun fdx/rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

(global-set-key (kbd "C-x C-r") 'fdx/rename-current-buffer-file)

(defun fdx/delete-current-buffer-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (ido-kill-buffer)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))


(global-set-key (kbd "C-x C-k") 'fdx/delete-current-buffer-file)

;; (defun git-add-commit-push (commit-message)
;;   "Add changed files, commit with the given COMMIT-MESSAGE, and push to the remote repository."
;;   (interactive "sCommit message: ")
;;   (shell-command "git add .")
;;   (shell-command (format "git commit -m \"%s\"" commit-message))
;;   (shell-command "git push"))

;; (global-set-key (kbd "C-c C-g") 'git-add-commit-push)

;; (defun git-add-commit-push (commit-message)
;;   "Add changed files, commit with the given COMMIT-MESSAGE, and push to the remote repository."
;;   (interactive "sCommit message: ")
;;   (shell-command "git add .")
;;   (shell-command (format "git commit -m \"%s\"" commit-message))
;;   (shell-command "git push"))

(defun git-add-commit-push ()
  "Add changed files, commit with a default message 'refresh', and push to the specified branch."
  (interactive)
  (shell-command "git commit -am 'refresh'")
  (shell-command (format "git pull"))
  (shell-command (format "git push")))

(global-set-key (kbd "C-c M-p") 'git-add-commit-push)
