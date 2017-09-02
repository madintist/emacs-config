# Emacs Config

Just my custom Emacs configuration. I'll add more notes about the setup here as I build it out.

## Setup

1. Clone this repo into your home directory
2. If you have an existing `.emacs` file that you want to save make sure to back it up somewhere besides your home directory.
3. Run the `init.sh` script in the repo. This will symlink the `.emacs` file from this repo into your home directory.

## Modes

Here's the list of language modes that have been added:

- [js2-mode](https://github.com/mooz/js2-mode)
  - For JavaScript
- [json-mode](https://github.com/joshwnj/json-mode)
  - For JSON files
- [markdown-mode](http://jblevins.org/projects/markdown-mode/)
  - For Markdown
- [php-mode](https://www.emacswiki.org/emacs/PhpMode)
  - For PHP files
- [web-mode](http://web-mode.org/)
  - HTML / CSS / Embedded PHP, etc.

## Packages

And here's a list of packages / extensions that are used in this build:

- [Auto-complete](https://github.com/auto-complete/auto-complete)
  - Autocomplete frontend
- [auto-package-update](https://github.com/rranelli/auto-package-update.el)
  - Automatically update Emacs packages
- [Emmet](https://github.com/smihica/emmet-mode)
  - Emmet. 'Nuff said.
- [Evil](https://github.com/emacs-evil/evil)
  - Vim layer
- [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell)
  - Get the PATH from our shell so that things work right
- [Flycheck](http://flycheck.org)
  - Syntax checker
- [git-gutter-fringe](https://github.com/syohex/emacs-git-gutter-fringe)
  - Git gutter w/ support for linum-mode
- [Helm](https://emacs-helm.github.io/helm/)
  - For finding files, command autocompletion, etc.
- [Helm AG](https://github.com/syohex/emacs-helm-ag)
  - Search interface for Helm. Supports Ag, Pt, Grep, Ack, etc.
- [Helm Swoop](https://github.com/ShingoFukuyama/helm-swoop)
  - In-buffer line hopping with the Helm interface
- [JS-Doc](https://github.com/mooz/js-doc)
  - Easily add JSDoc comments
- [Magit](https://magit.vc/)
  - Git interface for Emacs.
- [Projectile](https://github.com/bbatsov/projectile)
  - Project searching
- [Tern](http://ternjs.net/doc/manual.html#emacs)
  - JavaScript code analysis engine.
  - For this to work you'll need to clone [TernJS](https://github.com/ternjs/tern) into your `~` directory.
  - See the TernJS Emacs documentation for more details.
