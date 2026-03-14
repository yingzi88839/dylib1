ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:12.0

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JunshiCheat

JunshiCheat_FILES = JunshiCheat.xm
JunshiCheat_CFLAGS = -fobjc-arc
JunshiCheat_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
