#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PD1818HF_EX device
$(call inherit-product, device/vivo/PD1818HF_EX/device.mk)

PRODUCT_DEVICE := PD1818HF_EX
PRODUCT_NAME := omni_PD1818HF_EX
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1820
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 8.1.0 O11019 1729482966 release-keys"

BUILD_FINGERPRINT := vivo/1820/1820:8.1.0/O11019/1729482966:user/release-keys
