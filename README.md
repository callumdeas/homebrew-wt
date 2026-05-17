# homebrew-wt

Homebrew tap for [`wt`](https://github.com/CallumDeas/wt) — a git worktree manager for bare-repo workflows.

## Install

```shell
brew tap callumdeas/wt
brew install wt
```

## Upgrade

```shell
brew update
brew upgrade wt
```

## Uninstall

```shell
brew uninstall wt
brew untap callumdeas/wt
```

## How this tap is maintained

`Formula/wt.rb` is updated automatically on each release of the `wt` repo. The release workflow there downloads the published npm tarball, computes its `sha256`, and pushes a commit to this repo bumping `url` + `sha256` + version. Manual edits are not required.
