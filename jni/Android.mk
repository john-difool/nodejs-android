TOP_LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(TOP_LOCAL_PATH)/node/Android.mk
include $(TOP_LOCAL_PATH)/http_parser/Android.mk
include $(TOP_LOCAL_PATH)/uv/Android.mk
include $(TOP_LOCAL_PATH)/v8/Android.mk
include $(TOP_LOCAL_PATH)/uv/src/unix/ev/Android.mk
include $(TOP_LOCAL_PATH)/uv/src/unix/eio/Android.mk

LOCAL_PATH := $(TOP_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE    := hello-js 

LOCAL_CFLAGS := -g

LOCAL_SRC_FILES:= \
    hello-js.cpp \


LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/. \
    $(LOCAL_PATH)/v8/include/. \
    $(LOCAL_PATH)/node/src/. \
	$(LOCAL_PATH)/http_parser/. \
	$(LOCAL_PATH)/uv/include/. \
	$(LOCAL_PATH)/openssl/include/. \
    $(LOCAL_PATH)/lib

LOCAL_LDLIBS    := -lz -llog -landroid -lEGL -lGLESv1_CM

LOCAL_STATIC_LIBRARIES := android_native_app_glue node v8 libev libeio libuv libhttp_parser  

APP_ABI := armeabi armeabi-v7a

include $(BUILD_SHARED_LIBRARY) 

$(call import-module,android/native_app_glue)
