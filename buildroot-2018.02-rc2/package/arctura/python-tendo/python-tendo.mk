################################################################################
#
# python-tendo
#
################################################################################

PYTHON_TENDO_VERSION = 0.2.8
PYTHON_TENDO_SOURCE = tendo-$(PYTHON_TENDO_VERSION).tar.gz
PYTHON_TENDO_SITE = https://pypi.python.org/packages/28/41/fef57624ac5da22fdef600164879e69cd7008ed29799f22d46cad17cf60f
PYTHON_TENDO_LICENSE = Python
PYTHON_TENDO_LICENSE_FILES = LICENSE
PYTHON_TENDO_DEPENDENCIES = python-six
PYTHON_TENDO_SETUP_TYPE = setuptools

$(eval $(python-package))
