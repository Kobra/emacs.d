(when (string-match "apple-darwin" system-configuration)
  (setq mac-allow-anti-aliasing t)
  (set-face-font 'default "-apple-inconsolata-medium-r-normal--12-0-72-72-m-0-iso10646-1")
  (global-set-key [(backtab)] 'hippie-expand)
  (global-set-key [s-right] 'move-end-of-line)
  (global-set-key [s-left] 'move-beginning-of-line)
  (global-set-key (kbd "M-SPC") 'set-mark-command))

(provide 'apple-kit)
