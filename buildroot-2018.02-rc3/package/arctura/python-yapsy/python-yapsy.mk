################################################################################
#
# python-yapsy
#
################################################################################

PYTHON_YAPSY_VERSION = 1.11.223
PYTHON_YAPSY_SOURCE = Yapsy-$(PYTHON_YAPSY_VERSION).tar.gz
PYTHON_YAPSY_SITE = https://pypi.python.org/packages/8f/02/0f635f65c6ecbc75bd18f07fa9bb29c7823f4098b37623000bfc6e5861f4
PYTHON_YAPSY_LICENSE = BSD
PYTHON_YAPSY_LICENSE_FILES = LICENSE
PYTHON_YAPSY_SETUP_TYPE = setuptools

$(eval $(python-package))
