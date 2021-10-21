;; instalar o magit
;; disponibilizar uma chave para habilita-lo
(use-package magit :ensure t
  :config
  (lmap "g s" 'magit-status))
;; instalar o projectile
;; definer o diretório onde irá procurar os projetos
;; habilitar as chaves para:
;;; explorar os arquivos do projeto
;;; abriar um determinado projeto
;; instalar o neotree
;;; habilitar a chave para a abrir/fechar
;;; habilitar a chave para abrir na raiz do projeto
;;; aumentar a largura da janela

(provide 'manage-proj)
