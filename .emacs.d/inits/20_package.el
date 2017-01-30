;;----- パッケージ
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;----- 読み込むパッケージのリスト
(require 'cl)
(defvar installing-package-list
  '(
    auto-complete
    helm
    helm-c-yasnippet
    migemo
    tabbar
    tangotango-theme
    undo-tree
    volatile-highlights
    yatex
    
    php-mode
    scala-mode
    markdown-mode
    scss-mode
    haskell-mode
    google-c-style
    yaml-mode
    open-junk-file
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
