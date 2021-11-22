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
  "sr" 'move-to-window-line-top-bottom

  "v" 'scroll-up-command
  "V" 'scroll-down-command
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

  "k" 'kill-line
  "sk" 'kill-whole-line

  "\\" 'delete-horizontal-space

  "y" 'yank
  "sy" 'yank-pop

  ";" 'comment-line
  "/" 'undo

  "g" 'keyboard-quit

  "(" 'start-kbd-macro
  ")" 'end-kbd-macro
  "." 'kmacro-end-and-call-macro

  "ç" "C-x C-x"
  "sc" "C-c C-c")

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
