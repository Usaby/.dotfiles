;;
;; helm
;;
(require 'helm-config)
(helm-mode 1)
(helm-migemo-mode 1)

;;----- C-hで前の文字を削除
(define-key helm-map (kbd "C-h") 'delete-backword-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backword-char)

;;----- キーバインド
(define-key global-map (kbd "C-x b") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
