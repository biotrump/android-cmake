LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := hello

#LOCAL_SRC_FILES := hello.c
LOCAL_SRC_FILES := hello.f
#LOCAL_SRC_FILES := hello.f90
#LOCAL_SRC_FILES := hello.f95

ifeq ($(TARGET_ARCH_ABI),$(filter $(TARGET_ARCH_ABI), armeabi-v7a x86))
    LOCAL_CFLAGS := -DHAVE_NEON=1
ifeq ($(TARGET_ARCH_ABI),x86)
    LOCAL_CFLAGS += -mssse3
endif
endif
LOCAL_CFLAGS += -fPIE -pie -fPIC

#LOCAL_STATIC_LIBRARIES := cpufeatures
#LOCAL_STATIC_LIBRARIES := gfortran
#LOCAL_SHARED_LIBRARIES := gfortran
LOCAL_LDLIBS := -llog -lgfortran -lm
#LOCAL_LDLIBS := -llog -lm

LOCAL_LDFLAGS += -fPIE -pie

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)
#$(call import-module,cpufeatures)

include $(CLEAR_VARS)

LOCAL_MODULE := hello90

#LOCAL_SRC_FILES := hello.c
#LOCAL_SRC_FILES := hello.f
LOCAL_SRC_FILES := hello.f90
#LOCAL_SRC_FILES := hello.f95

ifeq ($(TARGET_ARCH_ABI),$(filter $(TARGET_ARCH_ABI), armeabi-v7a x86))
    LOCAL_CFLAGS := -DHAVE_NEON=1
ifeq ($(TARGET_ARCH_ABI),x86)
    LOCAL_CFLAGS += -mssse3
endif
endif
LOCAL_CFLAGS += -fPIE -pie -fPIC

#LOCAL_STATIC_LIBRARIES := cpufeatures
#LOCAL_STATIC_LIBRARIES := gfortran
#LOCAL_SHARED_LIBRARIES := gfortran
LOCAL_LDLIBS := -llog -lgfortran -lm
#LOCAL_LDLIBS := -llog -lm

LOCAL_LDFLAGS += -fPIE -pie

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)
#$(call import-module,cpufeatures)

include $(CLEAR_VARS)

LOCAL_MODULE := hello95

#LOCAL_SRC_FILES := hello.c
#LOCAL_SRC_FILES := hello.f
#LOCAL_SRC_FILES := hello.f90
LOCAL_SRC_FILES := hello.f95

ifeq ($(TARGET_ARCH_ABI),$(filter $(TARGET_ARCH_ABI), armeabi-v7a x86))
    LOCAL_CFLAGS := -DHAVE_NEON=1
ifeq ($(TARGET_ARCH_ABI),x86)
    LOCAL_CFLAGS += -mssse3
endif
endif
LOCAL_CFLAGS += -fPIE -pie -fPIC

#LOCAL_STATIC_LIBRARIES := cpufeatures
#LOCAL_STATIC_LIBRARIES := gfortran
#LOCAL_SHARED_LIBRARIES := gfortran
LOCAL_LDLIBS := -llog -lgfortran -lm
#LOCAL_LDLIBS := -llog -lm

LOCAL_LDFLAGS += -fPIE -pie

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)
#$(call import-module,cpufeatures)

