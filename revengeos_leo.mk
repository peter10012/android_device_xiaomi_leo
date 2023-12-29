# Release name
PRODUCT_RELEASE_NAME := leo

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/leo/leo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := leo
PRODUCT_NAME := revengeos_leo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note Pro
PRODUCT_MANUFACTURER := Xiaomi
