LOCAL_PATH := $(call my-dir)

##### zlib

include $(CLEAR_VARS)
LOCAL_MODULE := zlib

LOCAL_C_INCLUDES := \
    external/src/zlib \

LOCAL_SRC_FILES := \
    ../src/zlib/adler32.c \
    ../src/zlib/compress.c \
    ../src/zlib/crc32.c \
    ../src/zlib/deflate.c \
    ../src/zlib/gzclose.c \
    ../src/zlib/gzlib.c \
    ../src/zlib/gzread.c \
    ../src/zlib/gzwrite.c \
    ../src/zlib/infback.c \
    ../src/zlib/inffast.c \
    ../src/zlib/inflate.c \
    ../src/zlib/inftrees.c \
    ../src/zlib/trees.c \
    ../src/zlib/uncompr.c \
    ../src/zlib/zutil.c \

LOCAL_CFLAGS :=
LOCAL_CPPFLAGS :=

ifeq (,$(findstring debug, $(CONFIG)))
    LOCAL_CFLAGS += -fvisibility=hidden
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CPPFLAGS += -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
    LOCAL_CPPFLAGS += -mfloat-abi=hard -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),x86)
	LOCAL_CPPFLAGS += -m32 -march=i686 -mtune=atom -mssse3 -mfpmath=sse
endif

include $(BUILD_STATIC_LIBRARY)


##### libpng

include $(CLEAR_VARS)
LOCAL_MODULE := libpng

LOCAL_C_INCLUDES := \
    external/src/zlib \
    external/src/libpng \

LOCAL_SRC_FILES := \
    ../src/libpng/png.c \
    ../src/libpng/pngerror.c \
    ../src/libpng/pngget.c \
    ../src/libpng/pngmem.c \
    ../src/libpng/pngpread.c \
    ../src/libpng/pngread.c \
    ../src/libpng/pngrio.c \
    ../src/libpng/pngrtran.c \
    ../src/libpng/pngrutil.c \
    ../src/libpng/pngset.c \
    ../src/libpng/pngtrans.c \
    ../src/libpng/pngwio.c \
    ../src/libpng/pngwrite.c \
    ../src/libpng/pngwtran.c \
    ../src/libpng/pngwutil.c \
    ../src/libpng/arm/arm_init.c \
    ../src/libpng/arm/filter_neon_intrinsics.c \

LOCAL_CFLAGS :=
LOCAL_CPPFLAGS :=

ifeq (,$(findstring debug, $(CONFIG)))
    LOCAL_CFLAGS += -fvisibility=hidden
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CPPFLAGS += -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
    LOCAL_CPPFLAGS += -mfloat-abi=hard -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),x86)
	LOCAL_CPPFLAGS += -m32 -march=i686 -mtune=atom -mssse3 -mfpmath=sse
endif

include $(BUILD_STATIC_LIBRARY)


##### libjpeg

include $(CLEAR_VARS)
LOCAL_MODULE := libjpeg

LOCAL_C_INCLUDES := \
    external/src/libjpeg \

LOCAL_SRC_FILES := \
    ../src/libjpeg/jaricom.c \
    ../src/libjpeg/jcapimin.c \
    ../src/libjpeg/jcapistd.c \
    ../src/libjpeg/jcarith.c \
    ../src/libjpeg/jccoefct.c \
    ../src/libjpeg/jccolor.c \
    ../src/libjpeg/jcdctmgr.c \
    ../src/libjpeg/jchuff.c \
    ../src/libjpeg/jcinit.c \
    ../src/libjpeg/jcmainct.c \
    ../src/libjpeg/jcmarker.c \
    ../src/libjpeg/jcmaster.c \
    ../src/libjpeg/jcomapi.c \
    ../src/libjpeg/jcparam.c \
    ../src/libjpeg/jcprepct.c \
    ../src/libjpeg/jcsample.c \
    ../src/libjpeg/jctrans.c \
    ../src/libjpeg/jdapimin.c \
    ../src/libjpeg/jdapistd.c \
    ../src/libjpeg/jdarith.c \
    ../src/libjpeg/jdatadst.c \
    ../src/libjpeg/jdatasrc.c \
    ../src/libjpeg/jdcoefct.c \
    ../src/libjpeg/jdcolor.c \
    ../src/libjpeg/jddctmgr.c \
    ../src/libjpeg/jdhuff.c \
    ../src/libjpeg/jdinput.c \
    ../src/libjpeg/jdmainct.c \
    ../src/libjpeg/jdmarker.c \
    ../src/libjpeg/jdmaster.c \
    ../src/libjpeg/jdmerge.c \
    ../src/libjpeg/jdpostct.c \
    ../src/libjpeg/jdsample.c \
    ../src/libjpeg/jdtrans.c \
    ../src/libjpeg/jerror.c \
    ../src/libjpeg/jfdctflt.c \
    ../src/libjpeg/jfdctfst.c \
    ../src/libjpeg/jfdctint.c \
    ../src/libjpeg/jidctflt.c \
    ../src/libjpeg/jidctfst.c \
    ../src/libjpeg/jidctint.c \
    ../src/libjpeg/jmemnobs.c \
    ../src/libjpeg/jmemmgr.c \
    ../src/libjpeg/jquant1.c \
    ../src/libjpeg/jquant2.c \
    ../src/libjpeg/jutils.c \

LOCAL_CFLAGS :=
LOCAL_CPPFLAGS :=

ifeq (,$(findstring debug, $(CONFIG)))
    LOCAL_CFLAGS += -fvisibility=hidden
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CPPFLAGS += -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
    LOCAL_CPPFLAGS += -mfloat-abi=hard -mfpu=neon -march=armv7-a
endif

ifeq ($(TARGET_ARCH_ABI),x86)
	LOCAL_CPPFLAGS += -m32 -march=i686 -mtune=atom -mssse3 -mfpmath=sse
endif

include $(BUILD_STATIC_LIBRARY)