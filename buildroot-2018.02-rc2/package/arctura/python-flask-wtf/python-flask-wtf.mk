################################################################################
#
# python-flask-wtf
#
################################################################################

PYTHON_FLASK_WTF_VERSION = 0.14.2
PYTHON_FLASK_WTF_SOURCE = Flask_WTF-$(PYTHON_FLASK_WTF_VERSION).tar.gz
PYTHON_FLASK_WTF_SITE = https://pypi.python.org/packages/ba/15/00a9693180f214225a2c0b1bb9077f3b0b21f2e86522cbba22e8ad6e570c
PYTHON_FLASK_WTF_LICENSE = BSD
PYTHON_FLASK_WTF_LICENSE_FILES = LICENSE
PYTHON_FLASK_WTF_SETUP_TYPE = setuptools

$(eval $(python-package))
