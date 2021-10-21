;; coloca o arquivo custom em um lugar adequado
(setq custom-file (make-temp-file "emacs-custom"))

;; define o local do arquivo init
(setq init-file-user (concat user-emacs-directory "init.el"))

;; centraliza a chamada para o acesso do arquivo init
(defun open-init ()
  (interactive)
  (find-file init-file-user))

;; facilita o acesso ao arquivo init
(global-set-key (kbd "C-c i") 'open-init)

;; inibi a exibição da tela de ajuda inicial
(setq inhibit-startup-message t)

;; limpa a tela do emacs, minimalistmo
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; desliga o bip, chato!!!
(setq visible-bell t)

;; desativa o piscar do cursor
(setq blink-cursor-mode nil)

;; mostra a correspondência de parenteses
(show-paren-mode 1)

;; desabilitando a geração de arquivos de backup
(setq make-backup-file nil)

(load-theme 'deeper-blue)

;; define o text-mode como modo padrão
(setq-default major-mode 'text-mode)

;; remove os espaços em branco ao salvar.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; vê o número da linha quando está programando
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; configurando o gerenciamento de pacotes
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(let ((package 'use-package))
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

;; navega pelos pacontes constituintes do emacs usando `finder-by-keyword'
(defalias 'fbk 'finder-by-keyword)

(use-package ido
  :config
  (setq ido-enable-flex-matching t)
  (setq max-mini-window-height 0.5)
  (setq ido-file-extensions-order '(".py" ".el" ".org" ".txt"))
  (define-key ido-file-completion-map (kbd "C-l") 'ido-delete-backward-word-updir)
  (ido-mode 1))

;; adiciona os meus arquivos extras de configuração ao load-path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'core)
(require 'keybindings)
(require 'edit)
(require 'manage-proj)
