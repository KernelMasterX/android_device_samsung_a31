#
# device.mk - Samsung Galaxy A31 (a31) - FULL ROM
# HAL / permission / audio policy / init rc dosyalari stock blob'lardan gelir.
#

DEVICE_PATH := device/samsung/a31

# Dynamic partitions (A-only)
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    vendor/samsung/a31 \
    hardware/mediatek

# Screen
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=420

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS := *

# fstab (first-stage mount + vendor)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6768:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6768 \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6768:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt6768

# Bring-up: vintf kontrolu parcali stock manifest'te takilabilir, sonra true yap
PRODUCT_ENFORCE_VINTF_MANIFEST := false

# fastbootd (dinamik partition flashlamak icin)
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.1-impl-mock

# Audio/BT/health/power/light/vibrator/usb HAL'lari BILEREK yok:
# stock vendor'dan geliyor. Boot log'unda eksik HAL cikarsa tek tek ekle.

# Proprietary blob'lar
$(call inherit-product, vendor/samsung/a31/a31-vendor.mk)
