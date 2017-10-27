################################################################################
#
# python-adafruit-pureio
#
################################################################################

PYTHON_ADAFRUIT_PUREIO_VERSION = 0.2.1
PYTHON_ADAFRUIT_PUREIO_SOURCE = Adafruit_PureIO-$(PYTHON_ADAFRUIT_PUREIO_VERSION).tar.gz#md5=5b3276059eb55d6c37429a8413a92029
PYTHON_ADAFRUIT_PUREIO_SITE = https://pypi.python.org/packages/55/fa/99b1006fb4bb356762357b297d8db6ec9ffa13af480692ab72aa4a0dd0c4
PYTHON_ADAFRUIT_PUREIO_LICENSE = MIT License
PYTHON_ADAFRUIT_PUREIO_LICENSE_FILES = LICENSE
PYTHON_ADAFRUIT_PUREIO_SETUP_TYPE = setuptools

$(eval $(python-package))
