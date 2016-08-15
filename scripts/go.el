;; Prior to installation
;; go get github.com/rogpeppe/godef
;; go get -u github.com/nsf/gocode
;; go get golang.org/x/tools/cmd/goimports

(load-or-install-package 'go-mode)
(load-or-install-package 'go-eldoc)
(load-or-install-package 'go-autocomplete)
(add-hook 'before-save-hook 'gofmt-before-save)
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "C-c i") 'go-goto-imports)))
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "M-.") 'godef-jump)))
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "M-,") 'godef-jump-other-window)))
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'flycheck-mode)
;;(require 'go-autocomplete)
;;(add-hook 'go-mode-hook 'go-autocomplete)
