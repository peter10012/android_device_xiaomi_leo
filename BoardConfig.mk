#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8994-common
include device/xiaomi/msm8994-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/leo

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_BOOTLOADER_BOARD_NAME := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430

# Asserts
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := NotePro,leo

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init 
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_leo
TARGET_RECOVERY_DEVICE_MODULES := libinit_leo

# Kernel
TARGET_KERNEL_CONFIG := leo_user_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 #1920M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59852700672 #58G

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2021-07-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/biometrics/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Shims
TARGET_LD_SHIM_LIBS += /system/vendor/lib/hw/camera.vendor.msm8994.so|libshim_camera.so

# Inherit from the proprietary version
include vendor/xiaomi/leo/BoardConfigVendor.mk
