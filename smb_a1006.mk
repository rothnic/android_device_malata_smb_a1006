$(call inherit-product, device/malata/smb-common/smb-common.mk)

$(call inherit-product-if-exists, vendor/malata/smb_a1006/smb_a1006-vendor.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.nvidia.rc:root/init.nvidia.rc

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := device/malata/smb_a1006/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko

PRODUCT_PACKAGES += \
    libreference-ril

PRODUCT_NAME := full_smb_a1006
PRODUCT_DEVICE := smb_a1006
