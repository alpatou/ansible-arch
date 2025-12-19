(use-package yaml-mode
  :ensure t
  :mode ("\\.ya?ml\\'" . yaml-mode))

(setenv "YAML_CONFIG_FILE" (expand-file-name "~/.yaml.config.json"))
