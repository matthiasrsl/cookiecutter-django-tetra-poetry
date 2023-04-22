#!/bin/bash
npm install esbuild
poetry install
poetry run python manage.py migrate
poetry run pre-commit install
poetry run pre-commit run --all-files