#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8994-common
$(call inherit-product, device/xiaomi/msm8994-common/msm8994.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/blank.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# Rootdir
PRODUCT_PACKAGES += \
    init.xiaomi.device.rc

# TODO Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/leo/leo-vendor.mk)

# MOD: MiuiCamera
ifneq ($(wildcard vendor/miuicamera),)
$(call inherit-product, vendor/miuicamera/config.mk)
PRODUCT_COPY_FILES += \
    vendor/miuicamera/common/proprietary/etc/device_features/olive.xml:$(TARGET_COPY_OUT_VENDOR)/etc/device_features/leo.xml
endif
