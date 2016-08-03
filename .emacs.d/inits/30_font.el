;;----- ricty16pt
(if window-system (progn
    (when (equal system-type 'darwin) ;; Macでは16pt
      (add-to-list 'default-frame-alist '(font . "ricty-16")))
))
