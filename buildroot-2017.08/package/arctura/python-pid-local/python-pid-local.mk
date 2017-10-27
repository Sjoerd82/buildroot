################################################################################
#
# python-pid
#
################################################################################

PYTHON_PID_LOCAL_VERSION = 2.1.1
PYTHON_PID_LOCAL_SOURCE = pid-$(PYTHON_PID_VERSION).tar.gz
PYTHON_PID_LOCAL_SITE = /home/buildroot/local_packages
PYTHON_PID_LOCAL_SITE_METHOD = file
PYTHON_PID_LOCAL_LICENSE = ASL
PYTHON_PID_LOCAL_LICENSE_FILES = LICENSE
PYTHON_PID_LOCAL_SETUP_TYPE = setuptools

$(eval $(python-package))
