# GitHub Template: Simple Haskell Project

> A template for a simple Haskell codebase, useful for getting started.

First, install `stack` (or follow [the install instructions](https://docs.haskellstack.org/en/stable/install_and_upgrade/)) via,

```bash
$ curl -sSL https://get.haskellstack.org/ | sh
```

You will use this to manage GHC versions along with building, testing and running your project.

You can now build your project with,

```bash
$ stack build
```

And run it with,

```bash
$ stack run
```

## Testing

To run your tests continously on file changes, use,

```bash
$ stack test --fast --file-watch
```

Remove `--fast --file-watch` if you just want to run it once.

Check out the following resources to quickly get started:

- [Testing with Hspec](https://hspec.github.io/getting-started.html)
- [Using QuickCheck with Hspec](https://hspec.github.io/quickcheck.html)

## IDE & Editor

There's two options (which also work super in combination!):

- IDE feature set (types on hover, autocompletion, etc) via [ghcide](https://github.com/digital-asset/ghcide#install-ghcide)
- Fast typechecking, errors and warnings via [ghcid](https://github.com/ndmitchell/ghcid#ghcid----)

Both have a VS Code extension, [haskell-ghcid](https://marketplace.visualstudio.com/items?itemName=ndmitchell.haskell-ghcid) + [ghcide](https://marketplace.visualstudio.com/items?itemName=DigitalAssetHoldingsLLC.ghcide).

Setting up ghcid,

```bash
$ stack build --copy-compiler-tool ghcid
```

Setting up ghcide (takes a bit of time to build),

```bash
$ git clone https://github.com/digital-asset/ghcide.git
$ cd ghcide
$ stack --stack-yaml stack88.yaml build --copy-compiler-tool
```

While, ghcide will automatically start for you, ghcid is a bit different. You will either run ghcid in a terminal next to you with `stack exec -- ghcid` or let the VS Code extension run it for you with `Start Ghcid` from the command pallete (`Ctrl/Cmd + Shift + P`).
