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

  (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
  (define-key company-mode-map (kbd "<return>") 'company-abort)

  (imap
    "<tab>" 'company-complete)
  )

(use-package super-save :ensure t
  :config
  (setq super-save-auto-save-when-idle t)
  (setq super-save-idle-duration 0.1)
  (super-save-mode +1))

(use-package move-text :ensure t
  :config
  (emap
    "t" 'move-text-down
    "T" 'move-text-up)
  (vmap
    "t" 'move-text-down
    "T" 'move-text-up))    

(use-package undo-fu :ensure t
  :config
  (emap
    "/" 'undo-fu-only-undo
    "C-/" 'undo-fu-only-redo))

(use-package caps-lock :ensure t)

(provide 'edit)
