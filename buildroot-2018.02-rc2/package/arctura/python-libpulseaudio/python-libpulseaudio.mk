################################################################################
#
# python-libpulseaudio
#
################################################################################

PYTHON_LIBPULSEAUDIO_VERSION = 1.1
PYTHON_LIBPULSEAUDIO_SOURCE = libpulseaudio-$(PYTHON_LIBPULSEAUDIO_VERSION).tar.gz
PYTHON_LIBPULSEAUDIO_SITE = http://datatomb.de/~valodim
PYTHON_LIBPULSEAUDIO_LICENSE = LGPL
PYTHON_LIBPULSEAUDIO_LICENSE_FILES = LICENSE
PYTHON_LIBPULSEAUDIO_SETUP_TYPE = distutils

$(eval $(python-package))
