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
echo -e "\n\n\033[1;32mProject built successfully! 🎉\033[0m\n"
echo -e "You can now run the development server with:\n   $ poetry shell\n   $ python manage.py runserver"
echo -e "\n\033[1;31mIMPORTANT: Don't forget to change you Django SECRET_KEY in the .env file!\033[0m\n"