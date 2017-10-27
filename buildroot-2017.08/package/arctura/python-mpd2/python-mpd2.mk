################################################################################
#
# python-mpd2
#
################################################################################

PYTHON_MPD2_VERSION = 0.5.5
PYTHON_MPD2_SOURCE = python-mpd2-$(PYTHON_MPD2_VERSION).tar.gz
PYTHON_MPD2_SITE = https://pypi.python.org/packages/45/1b/7d547aa74c0dc6573a069dcc3bd4c4a000725f1f0121472948d0ef3f3ab3
PYTHON_MPD2_LICENSE = LGPL
PYTHON_MPD2_LICENSE_FILES = LICENSE
PYTHON_MPD2_DEPENDENCIES = zlib
PYTHON_MPD2_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
PYTHON_MPD2_SETUP_TYPE = distutils

$(eval $(python-package))
