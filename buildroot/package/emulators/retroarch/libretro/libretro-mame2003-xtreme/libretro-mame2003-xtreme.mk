################################################################################
#
# MAME2003 XTREME
#
################################################################################
# Version.: Commits on June 29, 2021
LIBRETRO_MAME2003_XTREME_VERSION = 6ecb94c2da04bea1d58757d618b1d9b1f29bddc1 
LIBRETRO_MAME2003_XTREME_SITE = $(call github,KMFDManic,mame2003-xtreme,$(LIBRETRO_MAME2003_XTREME_VERSION))
LIBRETRO_MAME2003_XTREME_LICENSE = MAME

LIBRETRO_MAME2003_XTREME_PLATFORM = $(LIBRETRO_PLATFORM)

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_RPI3),y)
	LIBRETRO_MAME2003_XTREME_PLATFORM = rpi3
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_RPI4),y)
LIBRETRO_MAME2003_XTREME_PLATFORM = rpi4_64
else ifeq ($(BR2_aarch64),y)
LIBRETRO_MAME2003_XTREME_PLATFORM = unix
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_S812),y)
    LIBRETRO_MAME2003_XTREME_PLATFORM = s812
endif

#ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_ORANGEPI_PC),y)
    LIBRETRO_MAME2003_XTREME_PLATFORM = rpi2
#endif

define LIBRETRO_MAME2003_XTREME_BUILD_CMDS
	mkdir -p $(@D)/obj/mame/cpu/ccpu
	$(TARGET_CONFIGURE_OPTS) $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" -C $(@D)/ -f Makefile platform="$(LIBRETRO_MAME2003_XTREME_PLATFORM)"
endef

define LIBRETRO_MAME2003_XTREME_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/mame2003_xtreme_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/mame078plus_libretro.so

	# Bios
    # Need to think of another way to use these files.
    # They take up a lot of space on tmpfs.
	mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/bios/mame2003-xtreme/samples
	cp -r $(@D)/metadata/* \
		$(TARGET_DIR)/usr/share/batocera/datainit/bios/mame2003-xtreme
endef

define LIBRETRO_MAME2003_XTREME_NAMCO_QUICK_FIX
	$(SED) 's|O3|O2|g' $(@D)/Makefile
	$(SED) 's|to continue|on Keyboard, or Left, Right on Joystick to continue|g' $(@D)/src/ui_text.c 
endef

LIBRETRO_MAME2003_XTREME_PRE_BUILD_HOOKS += LIBRETRO_MAME2003_XTREME_NAMCO_QUICK_FIX

$(eval $(generic-package))
