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

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_NAME := omni_garnet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := xiaomi for arm64
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="garnet-user 12 SKQ1.230401.001 V816.0.10.0.UNRTRXM release-keys"

BUILD_FINGERPRINT := Xiaomi/garnet/garnet:12/SKQ1.230401.001/V816.0.10.0.UNRTRXM:user/release-keys
