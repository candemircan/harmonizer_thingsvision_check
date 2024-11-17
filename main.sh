#!/bin/bash

VENV_NAME="my_env"

if [ -d "$VENV_NAME" ]; then
    rm -rf "$VENV_NAME"
fi

python3.9 -m venv $VENV_NAME

source "$VENV_NAME/bin/activate"
pip install --upgrade pip
pip install -r requirements.txt

jupyter nbconvert --to notebook --execute harmonizer_check.ipynb --inplace
