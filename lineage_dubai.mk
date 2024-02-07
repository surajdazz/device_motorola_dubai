#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    PRIVATE_BUILD_DESC="dubai_g-user 13 T1RD33.116-33-15 f0bc9-36fb4 release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:13/T1RD33.116-33-15/f0bc9-36fb4:user/release-keys

# Remove unwanted packages
 PRODUCT_PACKAGES += \
    RemovePackages

# Inherit some common Gapps stuff.
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# Lineage
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_ENABLE_BLUR := true
