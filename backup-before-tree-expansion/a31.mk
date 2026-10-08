#
# a31.mk - LineageOS product definition (lunch: lineage_a31-userdebug)
#

# Inherit from AOSP / Lineage
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Lineage
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device
$(call inherit-product, device/samsung/a31/device.mk)

PRODUCT_NAME := lineage_a31
PRODUCT_DEVICE := a31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A315F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# VERIFY: stock build.prop -> ro.build.fingerprint / ro.build.description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=a31 \
    PRODUCT_NAME=a31nsxx \
    PRIVATE_BUILD_DESC="a31nsxx-user 12 SP1A.210812.016 A315FXXUXXXX release-keys"

BUILD_FINGERPRINT := samsung/a31nsxx/a31:12/SP1A.210812.016/A315FXXUXXXX:user/release-keys
