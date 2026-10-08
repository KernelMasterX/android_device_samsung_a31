#
# Samsung Galaxy A31 (SM-A315F)
# LineageOS 19.1 / Android 12L
#

DEVICE_PATH := device/samsung/a31

# ---------------------------------------------------------
# Build
# ---------------------------------------------------------

BUILD_BROKEN_DUP_RULES := true

# ---------------------------------------------------------
# Bootloader / Platform
# ---------------------------------------------------------

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := k68v1_64_titan

# ---------------------------------------------------------
# Architecture
# ---------------------------------------------------------

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# ---------------------------------------------------------
# Kernel
# ---------------------------------------------------------

TARGET_KERNEL_SOURCE := kernel/samsung/a31

# Defconfig deliberately left out until verified from
# KernelMasterX/android_kernel_samsung_a31.
# TARGET_KERNEL_CONFIG := ...

# ---------------------------------------------------------
# Display
# ---------------------------------------------------------

TARGET_SCREEN_DENSITY := 420
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# ---------------------------------------------------------
# Partitions
# ---------------------------------------------------------

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# ---------------------------------------------------------
# Dynamic partitions
# ---------------------------------------------------------

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

BOARD_SUPER_PARTITION_SIZE := 6794772480

BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions

BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6172049408

BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product \
    odm

# ---------------------------------------------------------
# Recovery / fstab
# ---------------------------------------------------------

TARGET_RECOVERY_FSTAB := \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6768

# ---------------------------------------------------------
# VINTF
# ---------------------------------------------------------

DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/vintf/manifest.xml

# ---------------------------------------------------------
# SELinux
# ---------------------------------------------------------

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor

# ---------------------------------------------------------
# OTA
# ---------------------------------------------------------

TARGET_OTA_ASSERT_DEVICE := a31,a31xx

# ---------------------------------------------------------
# Properties
# ---------------------------------------------------------

TARGET_SYSTEM_PROP += \
    $(DEVICE_PATH)/system.prop
