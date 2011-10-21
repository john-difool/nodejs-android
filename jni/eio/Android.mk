LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libeio

LOCAL_CFLAGS := -DDEBUG \
				-DHAVE_CONFIG_H \
				-DEIO_CONFIG_H="\"eio_config_android.h\""

LOCAL_SRC_FILES := \
	eio.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/.
	
include $(BUILD_STATIC_LIBRARY)
