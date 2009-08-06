(defun make-save-point()
  (interactive)
  (point-to-register 999999)
)

(defun jump-to-save-point()
  (interactive)
  (jump-to-register 999999)
)

(defun copy-region-to-save-point()
  (interactive)
  (copy-region-as-kill (region-beginning) (region-end))
  (let ( (text-to-copy (current-kill 0)) )
    (jump-to-save-point)
    (insert-for-yank text-to-copy)
    )
)

(global-set-key (kbd "C-c w y") 'copy-region-to-save-point)
(global-set-key (kbd "C-c s p") 'make-save-point)
