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
#ECASOUND_CONF_OPTS = --disable-pyecasound --with-jack=/home/buildroot/buildroot/output/staging/usr/lib/jack
ECASOUND_CONF_OPTS = --disable-pyecasound --with-jack=$(STAGING_DIR)/usr/lib/jack
ECASOUND_DEPENDENCIES = host-pkgconf readline jack2
ECASOUND_AUTORECONF = YES

$(eval $(autotools-package))

