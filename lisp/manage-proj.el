(use-package projectile :ensure t
  :init
  (projectile-mode +1)
  :bind
  (:map projectile-mode-map
	("M-p" . projectile-command-map))
  :config
  (setq projectile-project-search-path '("~/workspace/"))

  (lmap
    "p" '(:def nil :wk "project")
    "p f" 'projectile-find-file
    "p p" 'projectile-switch-project))

(use-package neotree :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (lmap
    "d" '(:def nil :wk "directory")
    "d d" 'neotree-toggle))

(use-package magit :ensure t
  :config
  (lmap
    "g" '(:def nil :wk "git")
    "g s" 'magit-status))

(provide 'manage-proj)
