# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a personal Emacs configuration built using a modular structure. The main configuration is split across multiple files:

- `init.el` - Entry point that loads all configuration modules
- `choices/` directory contains specialized configuration files:
  - `general.el` - Basic Emacs settings and Evil mode setup
  - `package_managment.el` - Package archive configuration and use-package setup
  - `ui.el` - UI settings including theme, fonts, line numbers, and completion (Vertico/Marginalia/Orderless)
  - `lsp-config.el` - Language Server Protocol configuration with Eglot, language modes, and formatting
  - `keybindings.el` - Custom key bindings
  - `common-lisp-config.el` - SLIME configuration for Common Lisp development

## Development Environment

### Language Support
The configuration supports multiple programming languages through Eglot LSP:
- **Common Lisp**: SLIME with SBCL (`/usr/bin/sbcl`)
- **TypeScript/JavaScript**: TypeScript mode with Eglot
- **Rust**: rust-mode from git repository
- **Go**: go-mode from git repository  
- **Python**: Built-in python-mode with Eglot
- **C/C++**: Built-in modes with Eglot
- **Docker**: dockerfile-mode with docker-langserver
- **YAML**: yaml-mode

### Code Formatting
- Auto-formatting on save is enabled for all programming modes via Eglot
- Emacs Lisp files get indented and trailing whitespace removed on save
- Common Lisp files get proper indentation on save

### Key Development Tools
- **Evil mode**: Vim-like editing (loaded but not explicitly enabled)
- **Company**: Auto-completion for programming modes
- **Rainbow Delimiters**: Colored parentheses for better code readability
- **Paredit**: Structured editing for Lisp modes
- **Flymake**: Syntax checking for all programming modes
- **LSP-UI**: Enhanced LSP interface with sideline diagnostics and documentation

## Building Emacs from Source

Instructions are provided in `buildFromSource.txt`:
```bash
git clone --depth 1 https://github.com/emacs-mirror/emacs.git
cd emacs
./autogen.sh
./configure --with-gnutls --with-modules --with-x-toolkit=gtk3
make 
sudo make install 
emacs --version
```

## Custom Key Bindings

Additional key bindings beyond standard Emacs:
- `C-c p` - Check if current mode is a programming mode
- `C-c f` - Manually format current buffer (programming modes only)
- `C-c v` - Check LSP server status

## Package Management

Uses multiple package archives:
- GNU ELPA (gnu-elpa)
- NonGNU ELPA (nongnu) 
- MELPA
- Org mode ELPA

Some packages are installed from git repositories using `use-package` `:vc` directive (rust-mode, go-mode).

## Configuration Loading Order

1. `general.el` - Basic settings and Evil mode
2. `ui.el` - UI and completion configuration  
3. `package_managment.el` - Package system setup
4. `keybindings.el` - Custom key bindings
5. `lsp-config.el` - LSP and language-specific configuration
6. `common-lisp-config.el` - SLIME configuration
