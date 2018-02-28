################################################################################
#
# rt-plugins
#
################################################################################

RT_PLUGINS_VERSION = 0.0.6
RT_PLUGINS_SOURCE = rt-plugins_$(RT_PLUGINS_VERSION).tar.gz
RT_PLUGINS_SITE = http://faculty.tru.ca/rtaylor/rt-plugins/
RT_PLUGINS_SDK_LICENSE = GNU
#RT_PLUGINS_LICENSE_FILES = 
RT_PLUGINS_INSTALL_STAGING = NO
RT_PLUGINS_INSTALL_TARGET = YES
#RT_PLUGINS_DEPENDENCIES = ecasound

$(eval $(cmake-package))
