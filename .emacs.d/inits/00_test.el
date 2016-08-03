;;----- 関数の折りたたみ
(add-hook 'c-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'c++-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'scheme-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'python-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'ruby-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(define-key global-map (kbd "C-^") 'hs-toggle-hiding)

;(require 'mark-more-like-this)
(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)

;行数表示
(global-linum-mode t)

;列数表示
(column-number-mode t)

;対応する括弧を表示
(show-paren-mode t)

;¥の代わりに\を入力
(define-key global-map [?¥] [?\\])

;オープニングメッセージを表示しない
(setq inhibit-startup-message t)

;マウススクロールを滑らかにする
(setq mac-mouse-wheel-smooth-scroll t)
