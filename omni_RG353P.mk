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

# Inherit from RG353P device
$(call inherit-product, device/rockchip/RG353P/device.mk)

PRODUCT_DEVICE := RG353P
PRODUCT_NAME := omni_RG353P
PRODUCT_BRAND := RG353P
PRODUCT_MODEL := RG353P
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3566_rgo-userdebug 11 RD2A.211001.002 eng.dell.20230108.173648 release-keys"

BUILD_FINGERPRINT := rockchip/rk3566_rgo/rk3566_rgo:11/RD2A.211001.002/dell01081736:userdebug/release-keys
