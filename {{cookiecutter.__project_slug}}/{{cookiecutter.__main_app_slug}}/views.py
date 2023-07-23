from django.views.generic.base import TemplateView


class HomePageView(TemplateView):
    """Home Page of the app."""

    template_name = "{{cookiecutter.__main_app_slug}}/home.html"
