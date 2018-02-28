################################################################################
#
# python-unidecode
#
################################################################################

PYTHON_UNIDECODE_VERSION = 1.0.22
PYTHON_UNIDECODE_SOURCE = Unidecode-$(PYTHON_UNIDECODE_VERSION).tar.gz
PYTHON_UNIDECODE_SITE = https://pypi.python.org/packages/9d/36/49d0ee152b6a1631f03a541532c6201942430060aa97fe011cf01a2cce64
PYTHON_UNIDECODE_LICENSE = GPL
PYTHON_UNIDECODE_LICENSE_FILES = LICENSE
PYTHON_UNIDECODE_SETUP_TYPE = setuptools

$(eval $(python-package))
