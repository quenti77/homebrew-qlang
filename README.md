# homebrew-qlang

[Homebrew](https://brew.sh) tap for [qlang](https://github.com/quenti77/qlang) (macOS and Linux, Intel and Apple/ARM).

```sh
brew tap quenti77/qlang
brew install qlang
qlang --version
```

`Formula/qlang.rb` is written by the release workflow of qlang (`scripts/update-package-repos.sh`): it downloads
the program of the release and checks its SHA-256. Do not edit it by hand; change `packaging/qlang.rb.in` in qlang.
