(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; on to the visual settings
(setq inhibit-splash-screen t)	; no splash screen, thanks
(setq visible-bell t) ; no beeps please
(line-number-mode 1)	; have line numbers and
(column-number-mode 1)	; column numbers in the mode line
(delete-selection-mode 1) ; delete selected block when start typing

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (setq el-get-install-branch "master")
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(color-theme-twilight)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-face-font 'default "-*-terminus-*-*-*-*-14-*-*-*-*-*-*-*")
(set-face-font 'bold "-*-terminus-bold-*-*-*-14-*-*-*-*-*-*-*")
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 50))
(add-to-list 'default-frame-alist '(alpha 95 50))

(require 'essentials-kit)
(require 'ruby-kit)
;(require 'apple-kit)
(require 'org-kit)
;(require 'erlang-kit)
;(require 'debian-kit)
(require 'russian-kit)
(require 'browser-kit)
(require 'android-kit)

;;;;; Tramp settings
;; Sudo via SSH
(set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

(server-start)
