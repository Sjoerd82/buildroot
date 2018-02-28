################################################################################
#
# python-colored
#
################################################################################

PYTHON_COLORED_VERSION = 1.3.5
PYTHON_COLORED_SOURCE = colored-$(PYTHON_COLORED_VERSION).tar.gz
PYTHON_COLORED_SITE = https://pypi.python.org/packages/19/be/85e6c8c1fd9b3d15d4500531ccbb164854d427690ad41c9ce9222ccabaf5
PYTHON_COLORED_LICENSE = GPLv3
PYTHON_COLORED_LICENSE_FILES = LICENSE
PYTHON_COLORED_SETUP_TYPE = distutils

$(eval $(python-package))
