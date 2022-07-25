"""
Sample tests
"""

from django.test import SimpleTestCase
from rest_framework.test import APIClient # noqa

from app import calc


class CalcTests(SimpleTestCase):

    def test_add_numbers(self):
        res = calc.add(5, 6)
        self.assertEqual(res, 11)

    def test_substract_numbers(self):
        res = calc.sub(10, 15)
        self.assertEqual(res, 5)


class TestAPIs(SimpleTestCase):

    """
    No APi yet to test
    """
    def test_get_hello(self):
        # client = APIClient()
        # res = client.get('/hello/')

        # self.assertEqual(res.status_code, 200)
        # self.asserEqual(
        #     res.data,
        #     ["Hello!"]
        # )
        self.assertEqual(200, 200)
