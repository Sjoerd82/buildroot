################################################################################
#
# UDISKS_GLUE
#
################################################################################

UDISKS_GLUE_VERSION = 1.3.5
UDISKS_GLUE_SOURCE = release-$(UDISKS_GLUE_VERSION).tar.gz
UDISKS_GLUE_SITE = https://github.com/fernandotcl/udisks-glue/archive
#UDISKS_GLUE_SITE = $(call github,fernandotcl,udisks-glue,$(UDISKS_GLUE_VERSION))
UDISKS_GLUE_INSTALL_STAGING = NO
UDISKS_GLUE_INSTALL_TARGET = YES
UDISKS_GLUE_AUTORECONF = YES
UDISKS_GLUE_DEPENDENCIES = udisks libconfuse

$(eval $(autotools-package))
