;; insere automaticamente o fechamento de parenteses, aspas entre outros
(add-hook 'prog-mode-hook 'electric-pair-local-mode)

(mmap
  :keymaps 'emacs-lisp-mode-map
  "i" '(lambda () (interactive)
	 (progn
	   (insert-parentheses)
	   (multistate-insert-state 1))))

(provide 'programming)
