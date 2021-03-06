# Emacs Config

Just my custom Emacs configuration. I'll add more notes about the setup here as I build it out.

## Modes

These are the langage modes that I've added:

- [apache-mode](https://www.emacswiki.org/emacs/apache-mode.el)
  - Apache server config files
- [js-comint](https://github.com/redguardtoo/js-comint)
  - JavaScript REPL
- [js2-mode](https://github.com/mooz/js2-mode)
  - *.js, *.jsx
- [json-mode](https://github.com/joshwnj/json-mode)
  - *.json
- [markdown-mode](https://jblevins.org/projects/markdown-mode/)
  - *.md, *.markdown
- [php-mode](https://github.com/ejmr/php-mode)
  - *.php, *.inc
- [vue-mode](https://github.com/AdamNiederer/vue-mode)
  - *.vue
- [web-mode](http://web-mode.org/)
  - *.phtml, *tpl.php, *.ascx, *.aspx, *.erb, *.mustache, *.djhtml, *.htm, *.hmtl, *.css

## Packages

These are the other packages that I've added (minor modes and such):

- [add-node-modules-path](https://github.com/codesuki/add-node-modules-path)
  - Add node_modules/ to the project path
- [ag](https://github.com/Wilfred/ag.el)
  - Interface for The Silver Searcher
  - Need this for helm-ag to work
- [auto-complete](https://github.com/auto-complete/auto-complete)
  - Auto completion provider for all major modes
- [auto-package-update](https://github.com/rranelli/auto-package-update.el)
  - Automatically check for package updates
- [clang-format](https://github.com/sonatard/clang-format)
  - Code formatter for C / C++ / Objective-C
- [emmet-mode](https://github.com/smihica/emmet-mode)
  - Emmet for Emacs
- [evil](https://github.com/emacs-evil/evil)
  - Vim emulator mode
- [flycheck](http://www.flycheck.org/en/latest/)
  - Syntax checker / linter
- [git-gutter](https://github.com/syohex/emacs-git-gutter)
  - Git highlighting in the gutter
- [helm](https://emacs-helm.github.io/helm/)
  - Major upgrade to all Emacs menus (M-x, buffer list, etc.)
- [helm-ag](https://github.com/syohex/emacs-helm-ag)
  - Silver Searcher interface for Helm
- [helm-projectile](https://github.com/bbatsov/helm-projectile)
  - Helm interface for Projectile
- [helm-swoop](https://github.com/ShingoFukuyama/helm-swoop)
  - Really easy way to hop around files
- [hl-todo](https://github.com/tarsius/hl-todo)
  - Highlighting of TODO comments, etc.
- [js-doc](https://github.com/mooz/js-doc)
  - Add JSDoc comments
- [linum-mode](https://www.emacswiki.org/emacs/LineNumbers)
  - Enable line numbers in buffers
- [lsp-mode](https://github.com/emacs-lsp/lsp-mode)
  - Microsoft LSP for JavaScript
- [lsp-ui](https://github.com/emacs-lsp/lsp-ui)
  - UI components for `lsp-mode`
- [magit](https://magit.vc/)
  - Emacs Git interface
- [prettier-js](https://github.com/prettier/prettier-emacs)
  - JavaScript linter/formatter
  - Used in js2-mode
- [projectile](https://github.com/bbatsov/projectile)
  - Project jumping / searching
- [slime](https://common-lisp.net/project/slime/)
  - Common Lisp IDE for Emacs
- [tern](http://ternjs.net/)
  - JavaScript code analysis engine for Emacs
- [use-package](https://github.com/jwiegley/use-package)
  - This loads/installs all of our packages automatically
- [yasnippet](http://joaotavora.github.io/yasnippet/)
  - Code snippet system
