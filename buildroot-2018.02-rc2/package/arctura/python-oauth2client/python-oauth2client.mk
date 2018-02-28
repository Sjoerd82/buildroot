################################################################################
#
# python-oauth2client
#
################################################################################

PYTHON_OAUTH2CLIENT_VERSION = 4.1.2
PYTHON_OAUTH2CLIENT_SOURCE = oauth2client-$(PYTHON_OAUTH2CLIENT_VERSION).tar.gz
PYTHON_OAUTH2CLIENT_SITE = https://pypi.python.org/packages/50/30/f89a4fc014a03e180840d432e73ffb96da422f2a8094ff3539f0f0c46661
PYTHON_OAUTH2CLIENT_LICENSE = APACHE2
PYTHON_OAUTH2CLIENT_LICENSE_FILES = LICENSE
#PYTHON_MPD2_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
PYTHON_OAUTH2CLIENT_DEPENDENCIES = python-six python-rsa python-pyasn python-httplib2
PYTHON_OAUTH2CLIENT_SETUP_TYPE = setuptools

$(eval $(python-package))
