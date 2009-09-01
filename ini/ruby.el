(require 'ruby-mode)
(require 'rhtml-mode)

(require 'rspec-mode)
(require 'feature-mode)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml" . rhtml-mode))
