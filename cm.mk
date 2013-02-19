## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := s9081

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wiko/s9081/device_s9081.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s9081
PRODUCT_NAME := cm_s9081
PRODUCT_BRAND := wiko
PRODUCT_MODEL := s9081
PRODUCT_MANUFACTURER := wiko
