################################################################################
#
# ecasound
#
################################################################################

ECASOUND_VERSION = 2.9.1
ECASOUND_SOURCE = ecasound-$(ECASOUND_VERSION).tar.gz
ECASOUND_SITE = http://ecasound.seul.org/download
ECASOUND_INSTALL_STAGING = NO
ECASOUND_INSTALL_TARGET = YES
#ECASOUND_CONF_OPTS =
#ECASOUND_DEPENDENCIES =

$(eval $(autotools-package))
