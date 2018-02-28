################################################################################
#
# python-pid
#
################################################################################

PYTHON_PID_VERSION = 2.1.1
PYTHON_PID_SOURCE = pid-$(PYTHON_PID_VERSION).tar.gz
PYTHON_PID_SITE = https://pypi.python.org/packages/7a/00/aaa596eb9963f224538dcdbbb53a5deeceab51ae2a5fe5ef93df5bdf8932
PYTHON_PID_LICENSE = ASL
PYTHON_PID_LICENSE_FILES = LICENSE
#PYTHON_PID_DEPENDENCIES = nose-1.3.7
PYTHON_PID_SETUP_TYPE = setuptools

$(eval $(python-package))
