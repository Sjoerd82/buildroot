################################################################################
#
# python-ads1x15
#
################################################################################

PYTHON_ADS1X15_VERSION = 1.0.2
PYTHON_ADS1X15_SOURCE = Adafruit_ADS1x15-$(PYTHON_ADS1X15_VERSION).tar.gz
PYTHON_ADS1X15_SITE = https://pypi.python.org/packages/14/e8/c9935e32f61e6562abea08cb704fcbfbb78b39bd1d20bb9b12eb4c2c820c
PYTHON_ADS1X15_LICENSE = MIT License
PYTHON_ADS1X15_LICENSE_FILES = LICENSE
PYTHON_ADS1X15_DEPENDENCIES = python-adafruit_gpio
PYTHON_ADS1X15_SETUP_TYPE = setuptools

$(eval $(python-package))
