################################################################################
#
# python-rsa
#
################################################################################

PYTHON_RSA_VERSION = 3.4.2
PYTHON_RSA_SOURCE = rsa-$(PYTHON_RSA_VERSION).tar.gz
PYTHON_RSA_SITE = https://pypi.python.org/packages/14/89/adf8b72371e37f3ca69c6cb8ab6319d009c4a24b04a31399e5bd77d9bb57
PYTHON_RSA_LICENSE = ASL2
PYTHON_RSA_LICENSE_FILES = LICENSE
#PYTHON_MPD2_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
PYTHON_RSA_SETUP_TYPE = setuptools

$(eval $(python-package))
