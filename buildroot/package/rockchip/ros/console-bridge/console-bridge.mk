CONSOLE_BRIDGE_VERSION = 0.2.7

CONSOLE_BRIDGE_SITE = $(call github,ros,console_bridge,$(CONSOLE_BRIDGE_VERSION))

CONSOLE_BRIDGE_CONF_OPTS += \
	-DSTAGING_DIR="$(STAGING_DIR)"

CONSOLE_BRIDGE_DEPENDENCIES = boost

$(eval $(catkin-package))
