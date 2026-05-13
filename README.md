# homebrew-tap

Homebrew tap for [ChooChoo](https://choochoo.cc).

## Install

```sh
brew tap choochoo-works/tap
```

### CLI

```sh
brew install choochoo
```

Installs the `choochoo` CLI with shell completions (`bash`, `zsh`, `fish`) and the `choochoo(1)` manpage.

### Desktop app (macOS)

```sh
brew install --cask choochoo
```

Installs `ChooChoo.app` into `/Applications`. The app self-updates via its built-in Tauri updater; `brew upgrade --cask` will not interfere.

## Updating

Releases are tagged from [`choochoo-works/choochoo_works`](https://github.com/choochoo-works/choochoo_works). This tap is bumped automatically on each new release tag.

## Layout

```
Formula/choochoo.rb   # CLI formula
Casks/choochoo.rb     # Desktop cask
```
