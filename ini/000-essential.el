;;; ==================================================================
;;; Author:  Ryan Briones (2008-12-23)
;;; Author:  Jim Weirich
;;; File:    ini-essential.el
;;; Purpose: Essential Emacs Functions and bindings
;;; ==================================================================

;;; Define autolist ==================================================

(defun make-auto (pattern mode)
  "Add a pattern to the auto-mode alist."
  (let ((ans (assoc pattern auto-mode-alist)))
    (if (and ans (equal mode (cdr ans)))
	(print "Do Nothing")
      (print "Added")
      (setq auto-mode-alist
	    (cons (cons pattern mode) auto-mode-alist)))))


;;; Customized Variables ===============================================

(setq next-line-add-newlines nil)	; C-n will not add lines
(setq require-final-newline t)		; require files end with newline
(setq auto-save-default nil)		; don't auto-save (it annoys me)

(put 'narrow-to-region 'disabled nil)	; narrow enabled
(put 'upcase-region 'disabled nil)	; change case enabled
(put 'eval-expression 'disabled nil)	; allow eval commands
