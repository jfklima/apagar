;; usa o pacote de icones para melhorar a aparência
(use-package all-the-icons :ensure t)

;; usa o doom-modeline para não ter que se preocupar com linha de modo
(use-package doom-modeline :ensure t
  :init (doom-modeline-mode 1))

;; usa um thema de cor do spacemacs
(use-package spacemacs-theme :ensure t
  :disabled t
  :defer t
  :init (load-theme 'spacemacs-dark t))

(load-theme 'leuven)

(provide 'ui)
