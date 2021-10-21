;; cria o sistema de mapeamentos
(use-package multistate :ensure t
  :hook
  (text-mode . multistate-mode)
  (prog-mode . multistate-mode)

  ;; enable selection is Visual state
  (multistate-visual-state-enter . (lambda () (set-mark (point))))
  (multistate-visual-state-exit .  deactivate-mark)

  ;; enable overwrite-mode in Replace state
  (multistate-replace-state-enter . overwrite-mode)
  (multistate-replace-state-exit .  (lambda () (overwrite-mode 0)))

  :config
  (add-hook 'deactivate-mark-hook 'multistate-edit-state)

  ;; Emacs state
  (multistate-define-state 'emacs :lighter "E")

  ;; Normal state
  (multistate-define-state
   'edit
   :default t
   :lighter "E"
   :cursor 'box
   :parent 'multistate-suppress-map)

  ;; Insert state
  (multistate-define-state
   'insert
   :lighter "I"
   :cursor 'bar
   :parent 'multistate-emacs-state-map)

  ;; Replace state
  (multistate-define-state
   'replace
   :lighter "R"
   :cursor 'hbar)

  ;; Visual state
  (multistate-define-state
   'visual
   :lighter "V"
   :cursor 'hollow
   :parent 'multistate-edit-state-map)

  :bind
  (:map multistate-edit-state-map
        ("i" . multistate-insert-state)
        ("R" . multistate-replace-state)
        ("<return>" . multistate-visual-state)
  (:map multistate-insert-state-map
        ("<return>" . multistate-edit-state))
  (:map multistate-visual-state-map
	("<return>" . multistate-edit-state))
  (:map multistate-replace-state-map
        ("<return>" . multistate-edit-state))))

 (use-package general :ensure t
   :init
   (require 'multistate)
   :config
   (general-create-definer emap :keymaps 'multistate-edit-state-map)
   (general-create-definer imap :keymaps 'multistate-insert-state-map)
   (general-create-definer vmap :keymaps 'multistate-visual-state-map)
   (general-create-definer rmap :keymaps 'multistate-replace-state-map)
   (general-create-definer lmap :keymaps 'multistate-edit-state-map :prefix "SPC")
   (general-create-definer mmap :prefix "SPC m"))

(use-package ido
  :disabled t
  :config
  (setq ido-enable-flex-matching t)
  (setq max-mini-window-height 0.5)
  (setq ido-file-extensions-order '(".py" ".el" ".org" ".txt"))
  (define-key ido-file-completion-map (kbd "C-l") 'ido-delete-backward-word-updir)
  (ido-mode 1))

(use-package helm :ensure t
  :diminish ""
  :init
  (helm-mode 1)
  :config
  (global-set-key [remap find-file] 'helm-find-files)
  (global-set-key [remap execute-extended-command] 'helm-M-x)
  (global-set-key [remap switch-to-buffer] 'helm-buffers-list)
  (global-set-key [remap isearch-forward] 'helm-occur)
  )

(provide 'core)
