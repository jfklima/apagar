(emap
  "n" 'next-line
  "p" 'previous-line

  "b" 'backward-char
  "f" 'forward-char

  "sb" 'backward-word
  "sf" 'forward-word

  "a" 'beginning-of-line
  "e" 'end-of-line

  "sa" 'backward-sentence
  "se" 'forward-sentence

  "C-SPC" '(lambda () (interactive) ())

  "l" 'recenter-top-bottom
  "sl" 'move-to-window-line-top-bottom

  "v" 'scroll-up-command
  "sv" 'scroll-down-command
  "]" 'scroll-other-window
  "[" 'scroll-other-window-down

  "sg" 'goto-line

  "m" 'newline
  "o" 'open-line

  "sq" 'fill-paragraph
  "sj" 'join-line

  "d" 'delete-char
  "x" 'delete-backward-char

  "sd" 'kill-word
  "sx" 'backward-kill-word
  "M-l" 'backward-kill-word

  "k" 'kill-line
  "sk" 'kill-whole-line

  "\\" 'delete-horizontal-space

  "y" 'yank
  "sy" 'yank-pop

  ";" 'comment-line
  "/" 'undo

  "g" 'keyboard-quit

  "SPC k" '(:def nil :wk "kmacro")
  "SPC ki" 'start-kbd-macro
  "SPC ke" 'end-kbd-macro
  "." 'kmacro-end-and-call-macro

  "rr" 'point-to-register
  "rj" 'jump-to-register
  "rc" 'copy-to-register
  "ri" 'insert-register
  "ra" 'append-to-register

  "q" 'quit-window

  "ç" "C-x C-x"
  "sc" "C-c C-c")

(imap
  "C-l" 'backward-kill-word
  "M-l" 'backward-delete-char
  "TAB" 'completion-at-point
  "SPC" 'self-insert-command)

(vmap
  "w" 'kill-region
  "sw" 'kill-ring-save)

(lmap
  "SPC" '(:def execute-extended-command :wk "M-x")
  "TAB" '(:def (lambda () (interactive) (switch-to-buffer (other-buffer)))
	       :wk "last-buffer")
  "h" '(:def help-map :wk "help")

  "f" '(:def nil :wk "file")
  "f f" 'find-file
  "f i" 'open-init

  "b" '(:def nil :wk "buffer")
  "b b" 'switch-to-buffer
  ;; "b s" 'save-buffer
  "b s" 'delete-trailing-whitespace
  "b k" 'kill-this-buffer
  "b a" 'beginning-of-buffer
  "b e" 'end-of-buffer
  "b h" 'split-window-below

  "w" '(:def nil :wk "window")
  "w u" 'delete-other-windows
  "w o" 'other-window

  "s" '(:def nil :wk "search")
  "s s" 'isearch-forward

  "m" '(:def nil :wk "mode")

  "q" '(:def nil :wk "quit")
  "q q" 'save-buffers-kill-emacs)

(mmap :keymaps 'emacs-lisp-mode-map
  "f" 'eval-defun
  "x" 'eval-last-sexp)

(provide 'keybindings)
