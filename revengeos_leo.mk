#
# Copyright (C) 2021 The RevengeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
PRODUCT_RELEASE_NAME := leo

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit from leo device
$(call inherit-product, device/xiaomi/leo/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := leo
PRODUCT_NAME := revengeos_leo
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="leo-user 10 QKQ1.191014.001 V12.5.1.0.QCNCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/leo/leo:10/QKQ1.191014.001/V12.5.1.0.QCNCNXM:user/release-keys"

# RevengeOS
REVENGEOS_BUILDTYPE := OFFICIAL
