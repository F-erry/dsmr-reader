from unittest import mock

from django.test.testcases import TestCase

from dsmr_backend.tests.mixins import InterceptStdoutMixin


class TestManagementCommand(InterceptStdoutMixin, TestCase):
    @mock.patch('dsmr_notification.services.send_notification')
    def test_clear_consumption(self, service_mock):
        self.assertFalse(service_mock.called)
        self._intercept_command_stdout('dsmr_notification_test')
        self.assertTrue(service_mock.called)
