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

  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "M-n") 'company-select-next)
  (define-key company-active-map (kbd "M-p") 'company-select-previous)

  (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
  (define-key company-active-map (kbd "<return>") 'company-abort)
  )

(provide 'edit)
