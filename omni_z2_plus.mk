$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/device.mk)

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_NAME := omni_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := Z2 Plus

PRODUCT_GMS_CLIENTID_BASE := android-zuk

TARGET_VENDOR_PRODUCT_NAME := z2_plus
TARGET_VENDOR_DEVICE_NAME := z2_plus
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=z2_plus PRODUCT_NAME=z2_plus

TARGET_VENDOR := zuk

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/2.5.412_170428:user/release-keys" \
PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 2.5.412_170428 release-keys"
