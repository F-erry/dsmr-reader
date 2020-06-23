"""
Django settings for dsmrreader project.

Generated by 'django-admin startproject' using Django 1.8.5.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.8/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os

from django.utils.translation import gettext_lazy as _


BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.8/howto/deployment/checklist/


# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False
ALLOWED_HOSTS = ['*']


# Application definition
INSTALLED_APPS = (
    # Django.
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.humanize',

    # Third party.
    'solo.apps.SoloAppConfig',
    'colorfield',
    'django_filters',
    'rangefilter',
    'rest_framework',

    # DSMR-reader.
    'dsmr_api.apps.ApiAppConfig',
    'dsmr_backend.apps.BackendAppConfig',
    'dsmr_backup.apps.BackupAppConfig',
    'dsmr_consumption.apps.ConsumptionAppConfig',
    'dsmr_datalogger.apps.DataloggerAppConfig',
    'dsmr_dropbox.apps.DropboxAppConfig',
    'dsmr_frontend.apps.FrontendAppConfig',
    'dsmr_mindergas.apps.MindergasAppConfig',
    'dsmr_mqtt.apps.MqttAppConfig',
    'dsmr_notification.apps.NotificationAppConfig',
    'dsmr_plugins.apps.PluginsAppConfig',
    'dsmr_pvoutput.apps.PvoutputAppConfig',
    'dsmr_stats.apps.StatsAppConfig',
    'dsmr_weather.apps.WeatherAppConfig',
    'dsmr_client.apps.DsmrClientConfig',
)

MIDDLEWARE = (
    'debug_toolbar.middleware.DebugToolbarMiddleware',

    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.security.SecurityMiddleware',

    # Local.
    'dsmr_frontend.middleware.exception_traceback.ExceptionTracebackMiddleware',
)

ROOT_URLCONF = 'dsmrreader.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',

                # Project version.
                'dsmr_frontend.context_processors.version',
            ],
        },
    },
]

WSGI_APPLICATION = 'dsmrreader.wsgi.application'

LOGIN_URL = 'admin:login'
LOGOUT_URL = 'admin:logout'

# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases

## Moved to defaults config.

# Internationalization
# https://docs.djangoproject.com/en/1.8/topics/i18n/

# Django creates migrations based on default language. Therefor we need to force English here.
LANGUAGE_CODE = 'en'

USE_I18N = True

USE_L10N = True

USE_TZ = True

# Localization.
# https://docs.djangoproject.com/en/1.8/topics/i18n/formatting/
FORMAT_MODULE_PATH = [
    'dsmrreader.formats'
]
USE_THOUSAND_SEPARATOR = True

# Caching framework. LocMemCache: Advantages of caching in memory but without requiring memcached installed.
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'TIMEOUT': 60,
    },
    'mqtt': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'TIMEOUT': 3600,
    },
}

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.8/howto/static-files/
STATIC_URL = '/static/'

# Translation files.
LANGUAGES = (
    ('nl', _('Dutch')),
    ('en', _('English')),
)

LOCALE_PATHS = (os.path.join(BASE_DIR, 'locales'), )


""" Python Logging. """
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'simple': {
            'format': '[%(asctime)s] %(levelname)-8s %(message)s'
        },
        'verbose': {
            'format': '[%(asctime)s] %(levelname)-8s @ %(module)s | %(message)s'
        },
    },
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
            'formatter': 'simple',
        },
        'django_file': {
            'class': 'logging.handlers.RotatingFileHandler',
            'filename': os.path.join(BASE_DIR, '..', 'logs', 'django.log'),
            'formatter': 'verbose',
            'maxBytes': 5 * 1024 * 1024,  # 5 MB max.
            'backupCount': 7,
        },
        'dsmrreader_file': {
            'class': 'logging.handlers.RotatingFileHandler',
            'filename': os.path.join(BASE_DIR, '..', 'logs', 'dsmrreader.log'),
            'formatter': 'verbose',
            'maxBytes': 5 * 1024 * 1024,  # 5 MB max.
            'backupCount': 7,
        },
    },
    'loggers': {
        'commands': {
            'handlers': ['console'],
            'level': 'WARNING',
            'propagate': True,
        },
        'django': {
            'handlers': ['django_file'],
            'level': 'WARNING',
            'propagate': True,
        },
        'dsmrreader': {
            'handlers': ['dsmrreader_file'],
            'level': 'INFO',
            'propagate': True,
        },
    },
}


""" Django Rest Framework. """

REST_FRAMEWORK = {
    'DEFAULT_FILTER_BACKENDS': (
        'rest_framework.filters.OrderingFilter',
        'django_filters.rest_framework.DjangoFilterBackend',
    ),
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'dsmr_api.authentication.HeaderAuthentication',
    ),
    'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.IsAuthenticated',
    ),
    'DEFAULT_RENDERER_CLASSES': (
        'rest_framework.renderers.JSONRenderer',
    ),
    'DEFAULT_PAGINATION_CLASS': 'rest_framework.pagination.LimitOffsetPagination',
    'PAGE_SIZE': 25,
}
