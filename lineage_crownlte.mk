# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from crownlte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := crownlte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_crownlte
PRODUCT_MODEL := SM-N960F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := crownlte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="crownltexx-user 8.1.0 M1AJQ FA81_N960FXXU4ASJ2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/crownltexx/crownlte:8.1.0/M1AJQ/N960FXXU4ASJ2:user/release-keys
