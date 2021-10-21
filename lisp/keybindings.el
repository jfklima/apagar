(emap
  "n" 'next-line
  "p" 'previous-line

  ;; teclas disponiveis
  "r" nil
  "t" nil
  "u" nil
  "s" nil
  "h" nil
  "ç" nil
  "x" nil
  "C" nil
  "," nil
  "." nil
  "\\" nil

  "b" 'backward-char
  "f" 'forward-char

  "a" 'beginning-of-line
  "e" 'end-of-line

  "M-p" 'backward-sentence
  "M-n" 'forward-sentence

  "l" 'recenter-top-bottom

  "v" 'scroll-up-command
  "]" 'scroll-other-window
  "[" 'scroll-other-window-down

  "m" 'newline
  "o" 'open-line

  "d" 'delete-char

  "k" 'kill-line

  "y" 'yank

  ";" 'comment-line
  "/" 'undo

  "g" 'keyboard-quit

  "C" "C-c C-c")

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
