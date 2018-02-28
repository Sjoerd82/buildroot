################################################################################
#
# python-regex
#
################################################################################

PYTHON_REGEX_VERSION = 2018.02.08
PYTHON_REGEX_SOURCE = regex-$(PYTHON_REGEX_VERSION).tar.gz
PYTHON_REGEX_SITE = https://pypi.python.org/packages/be/32/429382300a06eaa12094563ea40665b5a4ecfce50dcbece06200ae703c07
PYTHON_REGEX_SETUP_TYPE = setuptools
PYTHON_REGEX_LICENSE = PSFL
PYTHON_REGEX_LICENSE_FILES = LICENSE

$(eval $(python-package))
