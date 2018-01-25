################################################################################
#
# python-pytest-runner
#
################################################################################

PYTHON_PYTEST_RUNNER_VERSION = 3.0
PYTHON_PYTEST_RUNNER_SOURCE = pytest-runner-$(PYTHON_PYTEST_RUNNER_VERSION).tar.gz
PYTHON_PYTEST_RUNNER_SITE = https://pypi.python.org/packages/65/b4/ae89338cd2d81e2cc54bd6db2e962bfe948f612303610d68ab24539ac2d1
PYTHON_PYTEST_RUNNER_LICENSE = MIT
PYTHON_PYTEST_RUNNER_LICENSE_FILES = LICENSE
PYTHON_PYTEST_RUNNER_DEPENDENCIES = setuptools_scm
PYTHON_PYTEST_RUNNER_SETUP_TYPE = setuptools

$(eval $(python-package))
