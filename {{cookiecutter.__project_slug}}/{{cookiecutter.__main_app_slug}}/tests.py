from django.test import Client, TestCase


class HomePageViewTest(TestCase):
    """Tests related to the home page view."""

    def test_home_page_view_status_200(self):
        c = Client()
        response = c.get("/")
        self.assertEqual(response.status_code, 200)
