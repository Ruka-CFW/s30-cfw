LIBRKDB_SITE = $(TOPDIR)/../app/librkdb
LIBRKDB_SITE_METHOD = local

LIBRKDB_INSTALL_STAGING = YES

LIBRKDB_DEPENDENCIES += libglib2 sqlite json-c

ifeq ($(BR2_PACKAGE_RK_OEM), y)
LIBRKDB_INSTALL_TARGET_OPTS = DESTDIR=$(BR2_PACKAGE_RK_OEM_INSTALL_TARGET_DIR) install/fast
LIBRKDB_DEPENDENCIES += rk_oem
endif

$(eval $(cmake-package))
