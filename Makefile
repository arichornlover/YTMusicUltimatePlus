ARCHS = arm64
THEOS_DEVICE_IP = localhost -p 2222
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic
TARGET = iphone:clang:16.2:12.1.2
PACKAGE_VERSION = 1.4.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

$(TWEAK_NAME)_FILES = Sideloading.xm $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -DTWEAK_VERSION=$(PACKAGE_VERSION)
$(TWEAK_NAME)_FRAMEWORKS = UIKit Security

include $(THEOS_MAKE_PATH)/tweak.mk
