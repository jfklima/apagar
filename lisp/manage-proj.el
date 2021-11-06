(use-package projectile :ensure t
  :init
  (projectile-mode +1)
  :bind
  (:map projectile-mode-map
	("M-p" . projectile-command-map))
  :config
  (setq projectile-project-search-path '("~/projetos/" "~/workspace"))

  (lmap
    "p" '(:def nil :wk "project")
    "p d" 'neotree-projectile-action
    "p f" 'projectile-find-file
    "p o" 'projectile-switch-project))

(use-package neotree :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (define-key neotree-mode-map (kbd "r") 'neotree-rename-node)
  (define-key neotree-mode-map (kbd "D") 'neotree-delete-node)
  (define-key neotree-mode-map (kbd "a") 'neotree-create-node)
  (define-key neotree-mode-map (kbd "c") 'neotree-copy-node)
  (define-key neotree-mode-map (kbd "e") 'neotree-enter)
  (lmap
    "d" '(:def nil :wk "directory")
    "d d" 'neotree-toggle))

(use-package magit :ensure t
  :config
  (lmap
    "g" '(:def nil :wk "git")
    "g s" 'magit-status))

(use-package all-the-icons-dired :ensure t
  :hook (dired-mode . all-the-icons-dired-mode)
  :config
  (setq dired-del-marker t))

(provide 'manage-proj)
