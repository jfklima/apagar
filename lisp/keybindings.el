(emap
  "n" "C-n"
  "p" "C-p"

  "b" "C-b"
  "f" "C-f"

  "a" "C-a"
  "e" "C-e"

  "l" "C-l"

  "v" "C-v"

  "m" "C-m"
  "o" "C-o"

  "d" "C-d"

  "k" "C-k"

  "y" "C-y"

  "C" "C-c C-c"

  ";" "C-x C-;"
  "/" "C-/")

(imap
  "TAB" 'completion-at-point
  "SPC" 'self-insert-command)

(vmap
  "w" 'kill-region)

(lmap
  "SPC" 'execute-extended-command
  "TAB" '(lambda () (interactive) (switch-to-buffer (other-buffer)))
  "h" help-map

  "f f" 'find-file
  "f i" 'open-init

  "b b" 'switch-to-buffer
  "b s" 'save-buffer
  "b k" 'kill-this-buffer
  "b a" 'beginning-of-buffer
  "b e" 'end-of-buffer

  "w u" 'delete-other-windows
  "w o" 'other-window

  "s s" 'isearch-forward

  "q q" 'save-buffers-kill-emacs)

(mmap :keymaps 'emacs-lisp-mode-map
  "f" 'eval-defun
  "x" 'eval-last-sexp)

(provide 'keybindings)
