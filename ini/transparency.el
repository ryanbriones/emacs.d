(defun ensure-alpha()
  (interactive)
  (if (equal (frame-parameter nil 'alpha) nil)
      (set-frame-parameter nil 'alpha '(100)) ))

(defun reset-alpha()
  (interactive)
  (set-frame-parameter nil 'alpha '(100)) )

(defun get-alpha()
  (interactive)
  (car (frame-parameter nil 'alpha)) )

(defun set-alpha(new-alpha)
  (interactive "nEnter a new alpha level from 0-100: ")
  (if (and (> new-alpha 0) (< new-alpha 101))
      (progn
	(set-frame-parameter nil 'alpha (cons new-alpha '()))
	(message (concat "Alpha set to: " (number-to-string new-alpha))))
    (message (concat "Alpha out of range: " (number-to-string new-alpha)))) )

(defun step-alpha(step)
  (interactive "nIncrease alpha by: ")
  (ensure-alpha)
  (let ( (new-alpha (+ (get-alpha) step)) )
    (set-alpha new-alpha) ))

(defun decrease-alpha()
  (interactive)
  (step-alpha -2))

(defun increase-alpha()
  (interactive)
  (step-alpha 2))

(global-set-key (kbd "s--") 'decrease-alpha)
(global-set-key (kbd "s-+") 'increase-alpha)
(global-set-key (kbd "s-0") 'reset-alpha)
