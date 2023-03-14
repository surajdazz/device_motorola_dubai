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
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    PRIVATE_BUILD_DESC="dubai_g-user 12 S1RD32.55-106 0cdff5-e7305 release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:12/S1RD32.55-106/0cdff5-e7305:user/release-keys

# riceDroid Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
RICE_CHIPSET := SD778G+
RICE_MAINTAINER := Suraj.Das
WITH_GMS := true
SUSHI_BOOTANIMATION := 1440
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_USE_GOOGLE_TELEPHONY := false