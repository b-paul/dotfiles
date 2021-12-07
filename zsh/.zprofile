#!/bin/zsh

export PATH="$(du $HOME/.local/bin -d2 | cut -f2 | paste -sd ':'):$PATH"
