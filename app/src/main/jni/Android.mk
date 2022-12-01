LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
OPENCV_INSTALL_MODULES:=on

include $(LOCAL_PATH)/sdk/OpenCV.mk

LOCAL_MODULE    := Scanner
LOCAL_SRC_FILES := scan.cpp
LOCAL_LDLIBS    += -lm -llog -landroid -ljnigraphics
LOCAL_LDFLAGS += -ljnigraphics

LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true
LOCAL_LDFLAGS := -Wl,--no-fatal-warnings

include $(BUILD_SHARED_LIBRARY)