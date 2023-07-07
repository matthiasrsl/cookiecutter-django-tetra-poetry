#!/bin/bash
npm install esbuild
poetry install
poetry lock --no-update
poetry export -f requirements.txt -o requirements.txt
poetry run python manage.py migrate
git init --initial-branch=main
poetry run pre-commit install
poetry run pre-commit install --hook-type commit-msg
git add .
git cm -m "chore: Initial commit."
echo -e "\n\n\033[1;32mProject successfully set up! 🎉\033[0m\n"
echo -e "You can now run the development server with:\n $ cd {{cookiecutter.__project_slug}}\n $ poetry shell\n $ python manage.py runserver"
echo -e "\n\033[1;31mIMPORTANT: Don't forget to change Django's SECRET_KEY in the .env file!\033[0m\n"