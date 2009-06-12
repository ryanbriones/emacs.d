(setq personal-config-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(load (concat personal-config-dir "load-ini.el"))