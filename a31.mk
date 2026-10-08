#
# Samsung Galaxy A31
# LineageOS 19.1 / Android 12L
#

$(call inherit-product, device/samsung/a31/device.mk)

# 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# ---------------------------------------------------------
# Device
# ---------------------------------------------------------

PRODUCT_NAME := lineage_a31
PRODUCT_DEVICE := a31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A315F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# ---------------------------------------------------------
# Stock fingerprint
# ---------------------------------------------------------

BUILD_FINGERPRINT := samsung/a31xx/a31:12/SP1A.210812.016/A315FXXS5DXB1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=a31 \
    PRODUCT_NAME=a31xx \
    PRIVATE_BUILD_DESC="a31xx-user 12 SP1A.210812.016 A315FXXS5DXB1 release-keys"
