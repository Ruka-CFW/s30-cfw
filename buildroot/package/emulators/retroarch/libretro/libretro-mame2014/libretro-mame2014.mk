################################################################################
#
# MAME2014
#
################################################################################
LIBRETRO_MAME2014_VERSION = 2c1c121842e4b3a60592107601c6b5c40f6b2783
LIBRETRO_MAME2014_SITE = $(call github,libretro,mame2014-libretro,$(LIBRETRO_MAME2014_VERSION))

ifeq ($(BR2_arm),y)
	LIBRETRO_MAME_CONF += PTR64=0 ARM_ENABLED=1 LCPU=arm
endif

ifeq ($(BR2_aarch64),y)
	LIBRETRO_MAME_CONF += PTR64=1
endif

define LIBRETRO_MAME2014_BUILD_CMDS
	CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" \
	       CXXFLAGS="$(TARGET_CXXFLAGS)" \
	       LDFLAGS="$(TARGET_LDFLAGS)" \
	       $(MAKE) -C $(@D) REALCC="$(TARGET_CC)" \
	       CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_CC) -lm" \
	       RANLIB="$(TARGET_RANLIB)" AR="$(TARGET_AR)" \
	       platform="$(LIBRETRO_PLATFORM)" $(LIBRETRO_MAME2014_CONF)
endef

define LIBRETRO_MAME2014_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/mame2014_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/mame2014_libretro.so
endef

$(eval $(generic-package))
