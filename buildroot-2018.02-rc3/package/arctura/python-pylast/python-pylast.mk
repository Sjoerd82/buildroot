################################################################################
#
# python-pylast
#
################################################################################

PYTHON_PYLAST_VERSION = 2.1.0
PYTHON_PYLAST_SOURCE = pylast-$(PYTHON_PYLAST_VERSION).tar.gz
PYTHON_PYLAST_SITE = https://pypi.python.org/packages/ba/92/431d8246bc8c94046ab11d05ea5e6e82a1ec8a8a36884d9cf76cdb859e62
PYTHON_PYLAST_LICENSE = Apache2
PYTHON_PYLAST_LICENSE_FILES = LICENSE
PYTHON_PYLAST_SETUP_TYPE = setuptools

$(eval $(python-package))
