LOCAL_PATH := $(call my-dir)

ROOT_DIR := $(LOCAL_PATH)

SEXY_CFLAGS := -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -DWANTS_RENDER_TARGET_ALPHA_DISABLED -ffast-math
SEXY_CPPFLAGS := -std=gnu++11 -Wno-invalid-offsetof
SEXY_CFLAGS_OPT := -O2 -fPIC -flto -fno-inline -fno-omit-frame-pointer -fmove-loop-invariants -freg-struct-return -fno-rtti -fno-exceptions
SEXY_CFLAGS += -DNDEBUG -DRELEASEFINAL -DRELEASE_FINAL -DWANTS_CHEATS_DISABLED $(SEXY_CFLAGS_OPT)

include $(CLEAR_VARS)
LOCAL_MODULE := pvz2c
LOCAL_MODULE_FILENAME := libSrc
LOCAL_ARM_MODE := arm
$(info  TARGET_ARCH_ABI = $(TARGET_ARCH_ABI))
LOCAL_SRC_FILES  := ../prebuilt/$(TARGET_ARCH_ABI)/libSrc.so
LOCAL_C_INCLUDES :=
LOCAL_EXPORT_C_INCLUDES :=      $(ROOT_DIR)/../header \
                                                        $(ROOT_DIR)/../header/SexyAppFramework \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EAText/1.09.07/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EASTL/1.17.00/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EABase/2.06.01/include/Common \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EAStdC/1.10.02/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/FontFusion/4.5a.06/core \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EAIO/2.17.03/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/coreallocator/1.03.11/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EAThread/1.22.05/include \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/PPMalloc/1.20.03/include \
                                                        $(ROOT_DIR)/../header/pvz \
                                                        $(ROOT_DIR)/../header/pvz/UIEditor \
                                                        $(ROOT_DIR)/../header/pvz/TodLib \
                                                        $(ROOT_DIR)/../header/pvz/gameNetWork \
                                                        $(ROOT_DIR)/../header/pvz/PVP \
                                                        $(ROOT_DIR)/../header/pvz/dnode \
                                                        $(ROOT_DIR)/../header/pvz/Social/Widgets \
                                                        $(ROOT_DIR)/../header/pvz/Social/Data \
                                                        $(ROOT_DIR)/../header/SexyAppFramework/EATech/EATrace/2.09.07/include \

LOCAL_CFLAGS := $(SEXY_CFLAGS) -D_USE_WIDE_STRING=1 -DGL_GLEXT_PROTOTYPES -D_STLP_HAS_WCHAR_T
LOCAL_CFLAGS += -ffunction-sections -fdata-sections
LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_CPP_FEATURES :=
LOCAL_CPPFLAGS := $(SEXY_CPPFLAGS) -DWANTS_PRIMETEXT -DWIDGETS_USE_PRIMETEXT -DPRIME_FOR_PVZ2 -DWANTS_WWISE_ENABLED
LOCAL_EXPORT_CPPFLAGS := $(LOCAL_CPPFLAGS)

LOCAL_LDLIBS := -llog -ldl
LOCAL_EXPORT_LDLIBS := $(LOCAL_LDLIBS)
LOCAL_LDFLAGS := -Wl,--gc-sections
LOCAL_EXPORT_LDFLAGS := $(LOCAL_LDFLAGS)
LOCAL_SHARED_LIBRARIES :=
LOCAL_STATIC_LIBRARIES :=
LOCAL_WHOLE_STATIC_LIBRARIES :=
LOCAL_SHORT_COMMANDS := false

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := pvz2c_extend
LOCAL_MODULE_FILENAME := libSrcExt
HOOK_SRC := $(if $(filter arm64-v8a,$(TARGET_ARCH_ABI)),And64InlineHook/And64InlineHook.cpp,Arm32InlineHook/Arm32InlineHook.cpp)
LOCAL_SRC_FILES := Main.cpp $(HOOK_SRC)
LOCAL_C_INCLUDES := $(ROOT_DIR) $(ROOT_DIR)/And64InlineHook $(ROOT_DIR)/Arm32InlineHook
LOCAL_CPPFLAGS := -Wno-pmf-conversions
LOCAL_SHARED_LIBRARIES := pvz2c
LOCAL_LDLIBS := -llog -ldl

include $(BUILD_SHARED_LIBRARY)