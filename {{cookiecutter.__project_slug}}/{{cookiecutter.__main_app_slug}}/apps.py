from django.apps import AppConfig


class {{cookiecutter.__main_app_pascal}}Config(AppConfig):  # pylint: disable=missing-class-docstring
    default_auto_field = "django.db.models.BigAutoField"
    name = "{{cookiecutter.__main_app_slug}}"
