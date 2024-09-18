# My dotfiles

Managed using [GNU stow](https://www.gnu.org/software/stow/) as seen in [this Dreams of Autonomy's YouTube video](https://www.youtube.com/watch?v=y6XCebnB9gs&t=91s).

## Installation
1. Clone the repo in the home folder.

2. Get stow:
```bash
sudo pacman -S stow  # Arch (btw)
sudo apt-get install stow  # Debian, Ubuntu...
```

3. Navigate to the `.dotfiles` and do:
```bash
stow .
```
If there's no conflict this should just run. However if your configuration is different you'll get some errors. In this case you can run
```bash
stow --adopt .
```
which will instead copy the different files inside your dotfiles. Since it's a `git` repo you can then `diff` and all the other stuff to decide on what to keep, what to discard, instead push to a new branch... Cool, isn't it?

## Ignore
Stow ignores the `.git` folder, the `README.md` plus some more stuff by default. You can read more about it [here](https://www.gnu.org/software/stow/manual/stow.html#Types-And-Syntax-Of-Ignore-Lists).


