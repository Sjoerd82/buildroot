################################################################################
#
# python-rplcd
#
################################################################################

PYTHON_RPLCD_VERSION = 1.0.0
PYTHON_RPLCD_SOURCE = RPLCD-$(PYTHON_RPLCD_VERSION).tar.gz
PYTHON_RPLCD_SITE = https://pypi.python.org/packages/cf/ad/25c9427e4eb9994551bb391cabb8d9ddc9bc5fdceafa19dd859137df6848
PYTHON_RPLCD_LICENSE = MIT
PYTHON_RPLCD_LICENSE_FILES = LICENSE
PYTHON_RPLCD_SETUP_TYPE = setuptools

$(eval $(python-package))
