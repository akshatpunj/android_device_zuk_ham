# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from ham device
$(call inherit-product, device/zuk/ham/ham.mk)
$(call inherit-product-if-exists, vendor/zuk/ham/ham-vendor.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# DirtyUnicorns-BuildType
EXTENDED_BUILD_TYPE := UNOFFICIAL

PRODUCT_NAME := du_ham
PRODUCT_DEVICE := ham
PRODUCT_MANUFACTURER := ZUK
PRODUCT_MODEL := ZUK Z1

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BRAND := ZUK
TARGET_VENDOR := zuk
TARGET_VENDOR_PRODUCT_NAME := ham
TARGET_VENDOR_DEVICE_NAME := Z1
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Z1 PRODUCT_NAME=ham

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ZUK/ham/Z1:5.1.1/LMY49J/YOG4PAS9IG:user/release-keys" \
    PRIVATE_BUILD_DESC="ham-user 5.1.1 LMY49J YOG4PAS9IG release-keys"
