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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X698 device
$(call inherit-product, device/infinix/Infinix-X698/device.mk)

PRODUCT_DEVICE := Infinix-X698
PRODUCT_NAME := twrp_Infinix-X698
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X698
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x698_h812-user 11 RP1A.200720.011 94822 release-keys"

BUILD_FINGERPRINT := Infinix/X698-GL/Infinix-X698:11/RP1A.200720.011/220916V623:user/release-keys
