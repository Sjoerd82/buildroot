################################################################################
#
# python-mpd
#
################################################################################

PYTHON_MPD_VERSION = 0.3.0
PYTHON_MPD_SOURCE = python-mpd-$(PYTHON_MPD_VERSION).tar.gz
PYTHON_MPD_SITE = https://pypi.python.org/packages/d3/20/9d4f0f5b2da3df00042d8088e82672918975788e011d1172e4a17af14fdf
PYTHON_MPD_LICENSE = LGPL
PYTHON_MPD_LICENSE_FILES = LICENSE
PYTHON_MPD_SETUP_TYPE = distutils

$(eval $(python-package))
