ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= irremote.c config.c parsefile.c
LOCAL_MODULE := remotecfg
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= irkey.c
LOCAL_MODULE := keytest
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

endif  # TARGET_SIMULATOR != true
