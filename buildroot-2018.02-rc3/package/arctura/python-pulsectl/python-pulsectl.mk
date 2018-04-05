################################################################################
#
# python-pulsectl
#
################################################################################

PYTHON_PULSECTL_VERSION = 17.9.3
PYTHON_PULSECTL_SOURCE = pulsectl-$(PYTHON_PULSECTL_VERSION).tar.gz
PYTHON_PULSECTL_SITE = https://pypi.python.org/packages/81/46/e21f98ea60f2e68a7534f463cc00a8eb99dec690fa3b4a1b0622fd88c4f7
PYTHON_PULSECTL_LICENSE = MIT
PYTHON_PULSECTL_LICENSE_FILES = LICENSE
#PYTHON_PULSECTL_DEPENDENCIES = zlib
#PYTHON_PULSECTL_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
PYTHON_PULSECTL_SETUP_TYPE = setuptools

$(eval $(python-package))
