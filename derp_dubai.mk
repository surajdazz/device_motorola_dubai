#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Custom features
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := derp_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    PRIVATE_BUILD_DESC="dubai_g-user 12 S1RD32.55-106 0cdff5-e7305 release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:12/S1RD32.55-106/0cdff5-e7305:user/release-keys
