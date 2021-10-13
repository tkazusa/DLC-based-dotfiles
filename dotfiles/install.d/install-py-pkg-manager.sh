#!/bin/bash

# Install poetry for pakage management
# Details: https://github.com/python-poetry/poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -

# Enable tab completiopn for fish
poetry completions fish > ~/.config/fish/completions/poetry.fish

# Install pyenv to switch python versions betwen environments.
# https://python-poetry.org/docs/managing-environments/#switching-between-environments
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
