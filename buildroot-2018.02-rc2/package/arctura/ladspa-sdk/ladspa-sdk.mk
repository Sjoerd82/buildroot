################################################################################
#
# ladspa-sdk
#
################################################################################

LADSPA_SDK_VERSION = 1.13
LADSPA_SDK_SOURCE = ladspa_sdk_$(LADSPA_SDK_VERSION).tgz
LADSPA_SDK_SITE = http://www.ladspa.org/download
LADSPA_SDK_LICENSE = LGPLv2.1+
LADSPA_SDK_LICENSE_FILES = doc/COPYING
LADSPA_SDK_INSTALL_STAGING = YES

define LADSPA_SDK_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)/src targets
endef

define LADSPA_SDK_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/ladspa/ 
	$(INSTALL) -D -m 0644 $(@D)/plugins/*.so $(TARGET_DIR)/usr/lib/ladspa/
	$(INSTALL) -D -m 0755 $(@D)/bin/* $(TARGET_DIR)/usr/bin/
endef

define LADSPA_SDK_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/src/ladspa.h $(STAGING_DIR)/usr/include/
endef

$(eval $(generic-package))
