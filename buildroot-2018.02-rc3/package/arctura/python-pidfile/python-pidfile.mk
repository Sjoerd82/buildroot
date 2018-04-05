################################################################################
#
# python-pidfile
#
################################################################################

PYTHON_PIDFILE_VERSION = 1.0.1
PYTHON_PIDFILE_SOURCE = python-pidfile-$(PYTHON_PIDFILE_VERSION).tar.gz
PYTHON_PIDFILE_SITE = https://pypi.python.org/packages/a0/26/4e499769c4f953f1543681563c870507fc47e7fee027627eb6ac037facd3
PYTHON_PIDFILE_LICENSE = MIT
PYTHON_PIDFILE_LICENSE_FILES = LICENSE
PYTHON_PIDFILE_SETUP_TYPE = setuptools

$(eval $(python-package))
