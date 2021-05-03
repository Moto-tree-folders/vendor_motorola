LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE := MotoWaves
LOCAL_MODULE_OWNER := motorola
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/MotoWaves/MotoWaves.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WavesService
LOCAL_MODULE_OWNER := motorola
LOCAL_SRC_FILES := priv-app/WavesService/WavesService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SYSTEM_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)
