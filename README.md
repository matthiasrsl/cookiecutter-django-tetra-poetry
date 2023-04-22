# cookiecutter-django-tetra-poetry
A [Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for creating [Django](https://www.djangoproject.com/) projects with a [Tetra](https://www.tetraframework.com/) frontend, using the [Poetry](https://python-poetry.org/) package manager.

## Usage
First, make sure you have all the tools installed (example on a Debian-like Linux distribution):
```bash
pip install cookiecutter  # The cookiecutter tool to build from this template.

curl -sSL https://install.python-poetry.org | python3 -  # The Poetry package manager for Python.

sudo apt install nodejs npm
```

ThenYou can now run cookiecutter against this repo to bootstrap your Django+Tetra project:
```
cookiecutter https://github.com/matthiasrsl/cookiecutter-django-tetra-poetry.git
```

You will be prompted some values for your project configuration. Don't forget to change the default values.

**IMPORTANT:** For security reasons, you MUST change the DJANGO_SECRET_KEY that is set in the `.env` file at the root of your project. You can use [Djecrety](https://djecrety.ir/) to generate a new secret key.

You can now run the development server:

```bash
poetry shell
python manage.py runserver
```