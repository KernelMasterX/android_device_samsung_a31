#
# Samsung Galaxy A31 (SM-A315F)
# LineageOS 19.1 / Android 12L
#

DEVICE_PATH := device/samsung/a31

# ---------------------------------------------------------
# Display
# ---------------------------------------------------------

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420

# ---------------------------------------------------------
# Fstab
# ---------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6768:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt6768

# ---------------------------------------------------------
# Overlay
# ---------------------------------------------------------

ifneq ($(wildcard $(DEVICE_PATH)/overlay),)
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay
endif

# ---------------------------------------------------------
# Vendor
# ---------------------------------------------------------

$(call inherit-product, vendor/samsung/a31/a31-vendor.mk)
