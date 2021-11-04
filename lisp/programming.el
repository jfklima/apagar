(use-package lsp-mode :ensure t
  :init
  (setq lsp-keymap-prefix "M-l")
  :hook ((python-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq lsp-idle-delay 0.500)
  (setq lsp-log-io nil))

(use-package helm-dash :ensure t
  :config
  (setq helm-dash-min-length 2))

(use-package pyenv-mode :ensure t
  :hook (python-mode . pyenv-mode))

;; emacs-lisp

(mmap
  :keymaps 'emacs-lisp-mode-map
  "i" '(lambda () (interactive)
	 (progn
	   (insert-parentheses)
	   (multistate-insert-state 1))))

;; python-mode

(defun python-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Python 3")))

(add-hook 'python-mode-hook 'python-doc)

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

;; insere automaticamente o fechamento de parenteses, aspas entre outros
(add-hook 'prog-mode-hook 'electric-pair-local-mode)

(mmap
  :keymaps 'python-mode-map
  "s" '(:def helm-dash :wk "dash"))

(provide 'programming)
