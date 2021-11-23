;; utilizar o org para monitorar as minhas tarefas de programação

(use-package org
  :hook
  (org-mode . 'org-shifttab)
  :config
  (setq org-hide-leading-stars t)
  (mmap
    :keymaps 'org-mode-map
    "u" 'outline-up-heading
    "l" 'org-insert-link
    "o" 'org-open-at-point
    "a" 'org-schedule
    "e" 'org-deadline
    "." 'org-time-stamp
    "s" 'org-sparse-tree))

;; criar um org template para org-capture
;; criar um arquivo todo
;; vincular uma teclar para o todo

(defun todo ()
  (interactive)
  (find-file "~/org/todo.org"))

(setq org-agenda-files '("~/org/notas.org"))

(lmap
  "o a" (lambda () (interactive) (org-agenda nil "a" nil))
  "o o" (lambda () (interactive) (find-file "~/org/organizador.org")))

(provide 'organize)
