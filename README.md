# My Dotfiles

This repository contains my personal scripts for setting up a new machine.

It expects that you have a GitHub account and that you have set up SSH keys for
it. It also expects you have some additional repositories set up:

## Brewfile

`github.com/<USERNAME>/brewfile`

this is a brewfile dump from `brew bundle dump` command

## Gitconfig

`github.com/<USERNAME>/gitconfig`

this is a gitconfig file(s) that will be symlinked to `~/.gitconfig`

## Zshrc

`github.com/<USERNAME>/zshrc`

this is a zshrc file(s) that will be symlinked to `~/.zshrc`

## Installation

To set up a new machine, you can run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/entegral/repo/master/install.sh)"