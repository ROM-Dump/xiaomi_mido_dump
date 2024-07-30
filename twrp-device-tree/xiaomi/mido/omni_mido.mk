#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

PRODUCT_DEVICE := mido
PRODUCT_NAME := omni_mido
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 4X
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V11.0.2.0.NCFCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/mido/mido:7.0/NRD90M/V11.0.2.0.NCFCNXM:user/release-keys
