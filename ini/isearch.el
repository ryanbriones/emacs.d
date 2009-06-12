(add-hook 'isearch-mode-end-hook 'rcb-goto-match-beginning)
(defun rcb-goto-match-beginning ()
  (when isearch-forward (goto-char isearch-other-end)))
