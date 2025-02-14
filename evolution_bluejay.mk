# Inherit some common stuff.
$(call inherit-product, vendor/evolution/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/evolution_common.mk)
$(call inherit-product, device/google/bluejay/device-evolution.mk)
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := evolution_bluejay
PRODUCT_MODEL := Pixel 6a
PRODUCT_BRAND := google

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ1A.230105.001.A2 9325585 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ1A.230105.001.A2/9325585:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
