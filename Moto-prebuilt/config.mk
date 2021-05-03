LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PATH := vendor/prebuilt

ifneq ($(MOTOROLA_DEVICE),true)
ifeq ($(MOTO_DOLBY),true)
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
$(LOCAL_PATH)/dolby/etc/sysconfig/hiddenapi-whitelist-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-whitelist-com.motorola.dolby.dolbyui.xml \
		$(LOCAL_PATH)/dolby/etc/permissions/com.motorola.dolby.dolbyui.features.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.dolby.dolbyui.features.xml \
			$(LOCAL_PATH)/dolby/etc/permissions/privapp-permissions-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.dolby.daxservice.xml \
			$(LOCAL_PATH)/dolby/etc/permissions/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.dolby.daxservice.xml \
		$(LOCAL_PATH)/dolby/lib/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib/vendor.dolby.hardware.dms@1.0.so \
		$(LOCAL_PATH)/dolby/lib64/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/vendor.dolby.hardware.dms@1.0.so \
		$(LOCAL_PATH)/dolby/vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@1.0-service\
              $(LOCAL_PATH)/dolby/vendor/etc/dolby/dax-default-vzw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default-vzw.xml \
		$(LOCAL_PATH)/dolby/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
		$(LOCAL_PATH)/dolby/vendor/etc/init/vendor.dolby.hardware.dms@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@1.0-service.rc \
		$(LOCAL_PATH)/dolby/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
		$(LOCAL_PATH)/dolby/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
		$(LOCAL_PATH)/dolby/vendor/lib/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@1.0.so \
		$(LOCAL_PATH)/dolby/vendor/lib/soundfx/libswdap_ds1se.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap_ds1se.so\
		$(LOCAL_PATH)/dolby/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
		$(LOCAL_PATH)/dolby/vendor/lib64/soundfx/libswdap_ds1se.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap_ds1se.so\
		$(LOCAL_PATH)/dolby/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so\
		$(LOCAL_PATH)/dolby/vendor/lib64/vendor.dolby.hardware.dms@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0-impl.so\
		$(LOCAL_PATH)/dolby/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
		$(LOCAL_PATH)/dolby/vendor/lib64/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0.so \
                $(LOCAL_PATH)/dolby/vendor/lib64/libdlbdsservice_ds1se.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice_ds1se.so \

# Moto Dolby
PRODUCT_PACKAGES += \
daxService \
MotoDolbyV3

BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy/vendor

DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/motodolby.xml

endif
endif

ifneq ($(MOTOROLA_DEVICE),true)
ifeq ($(MOTO_MAX),true)
PRODUCT_PACKAGES += \
MotoWaves \
WavesService

# Properties
-include $(LOCAL_PATH)/max.mk

# system
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/max/etc/sysconfig/hiddenapi-whitelist-com.motorola.motowaves.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-whitelist-com.motorola.motowaves.xml \
$(LOCAL_PATH)/max/etc/permissions/com.motorola.motowaves.features.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.motowaves.features.xml \
$(LOCAL_PATH)/max/etc/permissions/privapp-permissions-com.waves.maxxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.waves.maxxservice.xml \

#vendor
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/max/vendor/etc/maxx_conf.ini:$(TARGET_COPY_OUT_VENDOR)/etc/maxx_conf.ini \
$(LOCAL_PATH)/max/vendor/etc/maxx_default.mps:$(TARGET_COPY_OUT_VENDOR)/etc/maxx_default.mps \

#vendor lib
PRODUCT_COPY_FILES +=\
$(LOCAL_PATH)/max/vendor/lib/libandroidaudioeffect_Oreo.so:$(TARGET_COPY_OUT_VENDOR)/lib/libandroidaudioeffect_Oreo.so \
$(LOCAL_PATH)/max/vendor/lib/libmaxxaudioeffectapi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmaxxaudioeffectapi.so \
$(LOCAL_PATH)/max/vendor/lib/libmaxxeffectwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmaxxeffectwrapper.so \
$(LOCAL_PATH)/max/vendor/lib/libAndroidAlgSys.so:$(TARGET_COPY_OUT_VENDOR)/lib/libAndroidAlgSys.so \
$(LOCAL_PATH)/max/vendor/lib/libc++_shared.so:$(TARGET_COPY_OUT_VENDOR)/lib/libc++_shared.so \
$(LOCAL_PATH)/max/vendor/lib/libMAM2_3-AlgFX-Coretex_A9.so:$(TARGET_COPY_OUT_VENDOR)/lib/libMAM2_3-AlgFX-Coretex_A9.so \
$(LOCAL_PATH)/max/vendor/lib/soundfx/libmaxxeffect-cembedded.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libmaxxeffect-cembedded.so \

#vendor
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/max/lib/arm/libandroidaudioeffect_Oreo.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/WavesService/lib/arm/libandroidaudioeffect_Oreo.so \
$(LOCAL_PATH)/max/lib/arm/libc++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/WavesService/lib/arm/libc++_shared.so \
$(LOCAL_PATH)/max/lib/arm/libmaxxaudioeffectapi.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/WavesService/lib/arm/libmaxxaudioeffectapi.so \
$(LOCAL_PATH)/max/lib/arm/libmaxxeffectwrapper.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/WavesService/lib/arm/libmaxxeffectwrapper.so \

endif
endif

ifneq ($(MOTOROLA_DEVICE),false)
# Moto Dolby
PRODUCT_PACKAGES += \
DsUI \
Ds

#dolby
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/bs/framework/dolby_ds.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/dolby_ds.jar \
$(LOCAL_PATH)/bs/etc/ds1-default.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/ds1-default.xml \
$(LOCAL_PATH)/bs/etc/permissions/android.dolby.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.dolby.xml \
$(LOCAL_PATH)/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \

#dolby vendor
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/bs/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
$(LOCAL_PATH)/bs/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
$(LOCAL_PATH)/bs/vendor/lib/soundfx/libdseffect.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdseffect.so \

BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy/vendor

endif

