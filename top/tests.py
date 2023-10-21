from django.test import TestCase

# Create your tests here.

from top.views import top
from django.urls import reverse


class topPageTest(TestCase):
    def testShouldUseScifiedTemplate(self):
        url = reverse('top')
        request = self.client.get(url)
        response = top(request)
        self.assertTemplateUsed(response,'top.html')

