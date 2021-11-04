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
  "s" '(:def helm-dash :wk "dash")
  "c" '(:def python-shell-send-buffer :wk "shell-send-buffer")
  "d" '(:def python-describe-at-point :wk "describe-at-point")
  "f" '(:def python-eldoc-at-point :wk "eldoc-at-point")
  "j" '(:def imenu :wk "imenu")
  "l" '(:def python-shell-send-file :wk "shell-send-file")
  "p" '(:def run-python :wk "run")
  "r" '(:def python-shell-send-region :wk "shell-send-region")
  "'" '(:def python-shell-send-string :wk)
  "v" '(:def python-check :wk "check")
  "z" '(:def python-shell-switch-to-shell :wk "shell-switch-to-shell")
  "<" '(:def python-indent-shift-left :wk "indent-shift-left")
  ">" '(:def python-indent-shift-right :wk "indent-shift-right")
  "t" '(:def nil :wk "skeleton")
  "t c" '(:def python-skeleton-class :wk "class")
  "t d" '(:def python-skeleton-def :wk "def")
  "t f" '(:def python-skeleton-for :wk "for")
  "t i" '(:def python-skeleton-if :wk "if")
  "t m" '(:def python-skeleton-import :wk "import")
  "t t" '(:def python-skeleton-try :wk "try")
  "t w" '(:def python-skeleton-while :wk "while"))

(provide 'programming)
