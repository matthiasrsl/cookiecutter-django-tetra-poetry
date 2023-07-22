from django.views.generic.base import TemplateView


class HomePageView(TemplateView):
    """Home Page of the app."""

    template_name = "app/home.html"
