(use-package avy :ensure t
  :config
  (setq avy-background t)
  (emap
    "j" 'avy-goto-char))

(use-package crux :ensure t
  :config
  (emap
    "a" 'crux-move-beginning-of-line))

(use-package avy-zap :ensure t
  :config
  (emap
    "z" 'avy-zap-to-char))

(provide 'edit)
