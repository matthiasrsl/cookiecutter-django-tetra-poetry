#!/bin/bash
npm install esbuild
poetry install
poetry run python manage.py migrate
git init --initial-branch=main
poetry run pre-commit install
poetry run pre-commit install --hook-type commit-msg
poetry run pre-commit autoupdate
git add .
git cm -m "chore: Initial commit."