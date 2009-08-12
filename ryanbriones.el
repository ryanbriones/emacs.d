(tool-bar-mode -1)
(setq inhibit-startup-message t)
(set-scroll-bar-mode 'right)

(set-default 'truncate-lines t)
(setq standard-indent 2)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

(setq default-frame-alist (cons '(cursor-type . bar) default-frame-alist))

(if (is-emacs-23)
    (progn
      (set-alpha 96)
      
      (require 'linum)
      (global-linum-mode 1) 
      (setq linum-format "%4d ") ) ) 

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-goldenrod) ))
