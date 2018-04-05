################################################################################
#
# python-MechanicalSoup
#
################################################################################

PYTHON_MECHANICALSOUP_VERSION = 0.9.0.post4
PYTHON_MECHANICALSOUP_SOURCE = MechanicalSoup-$(PYTHON_MECHANICALSOUP_VERSION).tar.gz
PYTHON_MECHANICALSOUP_SITE = https://pypi.python.org/packages/8d/38/c03c5c64d3eedf7eca7ad4b56e5f23d129771609ad7201329bd3c3c96a0e
PYTHON_MECHANICALSOUP_LICENSE = MIT
PYTHON_MECHANICALSOUP_LICENSE_FILES = LICENSE
PYTHON_MECHANICALSOUP_DEPENDENCIES = python-beautifulsoup4 python-pytest-runner
PYTHON_MECHANICALSOUP_SETUP_TYPE = setuptools

$(eval $(python-package))
