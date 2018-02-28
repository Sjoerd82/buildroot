################################################################################
#
# python-pycryptodome
#
################################################################################

PYTHON_PYCRYPTODOME_VERSION = 3.4.7
PYTHON_PYCRYPTODOME_SOURCE = pycryptodome-$(PYTHON_PYCRYPTODOME_VERSION).tar.gz
PYTHON_PYCRYPTODOME_SITE = https://pypi.python.org/packages/2b/9b/aaa940ab8affd66eed043d69332dc607cddd68f9e399d93dcdfc8149fb21
PYTHON_PYCRYPTODOME_LICENSE = BSD2
PYTHON_PYCRYPTODOME_LICENSE_FILES = LICENSE
#PYTHON_MPD2_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
#PYTHON_PYCRYPTODOME_SETUP_TYPE = distutils
PYTHON_PYCRYPTODOME_SETUP_TYPE = setuptools

$(eval $(python-package))
