;;
;; GUI用の設定
;;
(if window-system (progn
    (global-set-key (kbd "C-x C-c") 'kill-this-buffer)          ;; C-x C-c で終了させてしまわないように変更
    (menu-bar-mode 0)                   ;; メニューバーを表示しない
    (tool-bar-mode 0)                   ;; ツールバーを表示しない
    (add-to-list 'default-frame-alist '(alpha . (90 85)))     ;; 透過
    (load-theme 'tangotango t)
))
