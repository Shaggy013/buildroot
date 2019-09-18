LINUX_RGA_SITE = $(TOPDIR)/../external/linux-rga
LINUX_RGA_VERSION = master
LINUX_RGA_SITE_METHOD = local

LINUX_RGA_LICENSE_FILES = COPYING
LINUX_RGA_LICENSE = Apache-2.0

LINUX_RGA_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_LIBDRM),y)
LINUX_RGA_DEPENDENCIES += libdrm
LINUX_RGA_CONF_OPTS += -Dlibdrm=true
endif

$(eval $(meson-package))