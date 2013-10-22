LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := sync.c
LOCAL_MODULE := libsync
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := sync.c sync_test.c
LOCAL_MODULE := sync_test
LOCAL_MODULE_TAGS := optional tests
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_CFLAGS += -fno-strict-aliasing
include $(BUILD_EXECUTABLE)
