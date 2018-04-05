################################################################################
#
# liboil
#
################################################################################

LIBOIL_VERSION = 0.3.17
LIBOIL_SOURCE = liboil-$(LIBOIL_VERSION).tar.gz
LIBOIL_SITE = http://liboil.freedesktop.org/download
LIBOIL_AUTORECONF = YES
LIBOIL_INSTALL_STAGING = YES
LIBOIL_INSTALL_TARGET = YES

# Checking if unaligned memory access works correctly cannot be done when cross
# compiling. For the following architectures there is no information available
# in the configure script.
ifeq ($(BR2_avr32),y)
	LIBOIL_CONF_ENV = as_cv_unaligned_access=no
endif
ifeq ($(BR2_cris),y)
	LIBOIL_CONF_ENV = as_cv_unaligned_access=yes
endif
ifeq ($(BR2_x86_64),y)
	LIBOIL_CONF_ENV = as_cv_unaligned_access=yes
endif

LIBOIL_CONF_OPTS+=--with-gnu-ld

ifeq ($(BR2_PACKAGE_LIBGLIB2),y)
	LIBOIL_GLIB_DEP = libglib2
endif

ifeq ($(BR2_VFP_FLOAT),y)
	LIBOIL_CONF_OPTS+=--enable-vfp
endif

LIBOIL_DEPENDENCIES = $(LIBOIL_GLIB_DEP)

#$(eval $(call AUTOTARGETS,package,liboil))
$(eval $(autotools-package))
# or $(eval $(host-autotools-package))

$(LIBOIL_HOOK_POST_INSTALL):
	# Remove useless bugreport program from the target
	rm -f $(TARGET_DIR)/usr/bin/oil-bugreport
	touch $@
