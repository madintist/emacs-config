# Emacs Config

Just my custom Emacs configuration. I'll add more notes about the setup here as I build it out.

## Setup

1. Clone this repo into your home directory
2. If you have an existing `.emacs` file that you want to save make sure to back it up somewhere besides your home directory.
3. Run the `init.sh` script in the repo. This will symlink the `.emacs` file from this repo into your home directory.

## Packages

Here's a list of packages / extensions that are used in this build:

- [ac-js2](https://github.com/ScottyB/ac-js2)
  - Improved autocomplete for js2-mode
- [Auto-complete](https://github.com/auto-complete/auto-complete)
  - Autocomplete frontend
- [Evil](https://github.com/emacs-evil/evil)
  - Vim layer
- [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell)
  - Get the PATH from our shell so that things work right
- [Flycheck](http://flycheck.org)
  - Syntax checker
- [Helm](https://emacs-helm.github.io/helm/)
  - For finding files, command autocompletion, etc.
- [Magit](https://magit.vc/)
  - Git interface for Emacs.
- [Projectile](https://github.com/bbatsov/projectile)
  - Project searching
- [Tern](http://ternjs.net/doc/manual.html#emacs)
  - JavaScript code analysis engine.
  - You'll need to install the Tern engine with NPM as well.
  
## Modes

And here's the list of language modes that have been added:

- [js2-mode](https://github.com/mooz/js2-mode)
  - For JavaScript
- [markdown-mode](http://jblevins.org/projects/markdown-mode/)
  - For Markdown
