import unittest

from app import create_app

class Unittest(unittest.TestCase):

    def setUp(self):
        self.app = create_app()
        self.client = self.app.test_client()

    def tearDown(self):
        pass

    def test_valid_response(self):
        response = self.client.get('/')
        self.assertEqual(response.get_json()['message'], 'Hello !')
        self.assertEqual(response.get_json()['success'], True)
        self.assertEqual(response.status_code, 200)

    def test_valid_response_health(self):
        response = self.client.get('/health')
        self.assertEqual(response.get_json()['message'], 'Healthy !')
        self.assertEqual(response.get_json()['success'], True)
        self.assertEqual(response.status_code, 500)
