################################################################################
#
# python-wtforms
#
################################################################################

PYTHON_WTFORMS_VERSION = 2.1
PYTHON_WTFORMS_SOURCE = WTForms-$(PYTHON_FLASK_WTFORMS_VERSION).zip
PYTHON_WTFORMS_SITE = https://pypi.python.org/packages/bf/91/2e553b86c55e9cf2f33265de50e052441fb753af46f5f20477fe9c61280e
PYTHON_WTFORMS_LICENSE = BSD
PYTHON_WTFORMS_LICENSE_FILES = LICENSE
PYTHON_WTFORMS_SETUP_TYPE = setuptools

$(eval $(python-package))
