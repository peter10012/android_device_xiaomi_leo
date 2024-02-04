#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_leo.mk

COMMON_LUNCH_CHOICES := \
    lineage_leo-user \
    lineage_leo-userdebug \
    lineage_leo-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/revengeos_leo.mk

COMMON_LUNCH_CHOICES += \
    revengeos_leo-user \
    revengeos_leo-userdebug \
    revengeos_leo-eng
