$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/peregrine/peregrine-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/peregrine/overlay

$(call inherit-product, build/target/product/full.mk)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom 

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_peregrine
PRODUCT_DEVICE := peregrine
