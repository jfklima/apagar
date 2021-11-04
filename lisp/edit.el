(add-hook 'text-mode-hook 'auto-fill-mode)

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

(use-package company :ensure t
  :hook (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  )

(provide 'edit)
