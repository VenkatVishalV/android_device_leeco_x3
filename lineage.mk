# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/leeco/x3/full_x3.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x3
PRODUCT_NAME := lineage_x3
PRODUCT_BRAND := LeEco
PRODUCT_MODEL := LeEco Le 1s
PRODUCT_MANUFACTURER := LeEco

#Don't Ship SuperSU
WITH_SUPERSU := false

#Maintainer Name
#PRODUCT_PROPERTY_OVERRIDES += ro.lineage.maintainer="VenkatVV"

# Release name
PRODUCT_RELEASE_NAME := x3

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/Le1s_CN/x3:6.0/DBXCNOP5902302082S/1486532099:user/release-keys
