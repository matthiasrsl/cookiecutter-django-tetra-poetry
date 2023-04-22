# cookiecutter-django-tetra-poetry
A [Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for creating [Django](https://www.djangoproject.com/) projects with a [Tetra](https://www.tetraframework.com/) frontend, using the [Poetry](https://python-poetry.org/) package manager.

## Usage
First, get Cookiecutter:
```bash
pip install cookiecutter
```

Then, get the Poetry package manager for Python:
```bash
curl -sSL https://install.python-poetry.org | python3 -
```

You can now run cookiecutter against this repo to bootstrap your Django+Tetra project:
```
cookiecutter https://github.com/matthiasrsl/cookiecutter-django-tetra-poetry.git
```

You will be prompted some values for your project configuration. Don't forget to change the default values.
