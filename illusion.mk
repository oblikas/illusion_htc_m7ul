#i# Specify phone tech before including full_phon
$(call inherit-product, vendor/illusion/config/gsm.mk)

# Fix?
$(call inherit-product, vendor/illusion/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := m7ul

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Illusion stuff.
$(call inherit-product, vendor/illusion/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Inherit led flash settings
$(call inherit-product, vendor/illusion/config/common_ledflash.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m7ul
PRODUCT_NAME := illusion_m7ul
PRODUCT_BRAND := HTC
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JWR66V.H10 BUILD_FINGERPRINT="htc/m7_google/m7:4.3/JWR66V.H10/230993:user/release-keys" PRIVATE_BUILD_DESC="3.06.1700.10 CL230993 release-keys"

#hybrid
PRODUCT_COPY_FILES += \
vendor/illusion/prebuilt/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf
