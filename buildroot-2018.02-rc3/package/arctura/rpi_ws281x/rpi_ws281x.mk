################################################################################
#
# rpi_ws281x
#
################################################################################

RPI_WS281X_VERSION = e4a05d6538c02bb9714f2efc6630f2bfdcf35bf6
RPI_WS281X_SITE = git://github.com/jgarff/rpi_ws281x.git
RPI_WS281X_LICENSE = BSD
RPI_WS281X_STAGING = YES
RPI_WS281X_TARGET = YES
RPI_WS281X_DEPENDENCIES = host-scons host-swig

define RPI_WS281X_BUILD_CMDS
	(cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) CROSS=$(TARGET_CROSS) \
		$(SCONS))
	(cd $(@D)/python; \
		$(HOST_PKG_PYTHON_SETUPTOOLS_ENV) \
		python setup.py build)
endef

define RPI_WS281X_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/libws2811.a $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/test $(TARGET_DIR)/usr/bin
        $(INSTALL) -D -m 0755 $(@D)/rpihw.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/dma.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/pcm.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/pwm.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/ws2811.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/mailbox.o $(TARGET_DIR)/usr/lib
        $(INSTALL) -D -m 0755 $(@D)/main.o $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
