# Mike Lee Williams's dotfiles

The install script uses [stowsh](https://github.com/williamsmj/stowsh) to
symlink dotfiles into the appropriate location.

```sh
git clone git@github.com:williamsmj/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```

If you're running `install.sh` on an ssh one-liner, you need the `-t` option,
i.e. ssh -t server ~/.dotfiles/install.sh.
