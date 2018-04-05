################################################################################
#
# python-mpd2
#
################################################################################

PYTHON_MPD2_VERSION = 1.0.0
PYTHON_MPD2_SOURCE = python-mpd2-$(PYTHON_MPD2_VERSION).tar.bz2
PYTHON_MPD2_SITE = https://pypi.python.org/packages/a8/12/63bdb3ee8e0bd7dd0476e79f0f130c1caeff408a1b1e5531ae9891805f7d
PYTHON_MPD2_LICENSE = LGPL
PYTHON_MPD2_LICENSE_FILES = LICENSE
PYTHON_MPD2_DEPENDENCIES = zlib
PYTHON_MPD2_ENV = PYTHONPATH=/home/buildroot/buildroot-2017.08/output/target/usr/lib/python2.7/site-packages/
PYTHON_MPD2_SETUP_TYPE = setuptools

$(eval $(python-package))
