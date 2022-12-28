TARGET = iphone:clang:16.2:13.0
PACKAGE_VERSION = 1.2.8

ifeq ($(SIDELOADED),1)
DISPLAY_NAME = YouTube Music
BUNDLE_ID = com.google.ios.youtubemusic
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic
ARCHS = arm64
MODULES = jailed
YTMusicUltimate_USE_FLEX = 0
YTMusicUltimate_USE_FISHHOOK = 0
FINALPACKAGE = 1
CODESIGN_IPA = 0

YTMusicUltimate_IPA = ./tmp/Payload/YouTubeMusic.app
YTMusicUltimate_FRAMEWORKS = UIKit Security Foundation CoreGraphics
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

YTMusicUltimate_FILES = $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
YTMusicUltimate_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
