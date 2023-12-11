#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from OP4F2F device
$(call inherit-product, device/oppo/OP4F2F/device.mk)

PRODUCT_DEVICE := OP4F2F
PRODUCT_NAME := omni_OP4F2F
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2239
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_OP4F2F-eng 20.1.0 RQ1A.210205.004 eng.root.20220627.203839 test-keys"

BUILD_FINGERPRINT := OPPO/fox_OP4F2F/OP4F2F:20.1.0/RQ1A.210205.004/root06272036:eng/test-keys
