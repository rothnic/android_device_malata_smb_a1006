# inherit from the common version
-include device/malata/smb-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/malata/smb_a1006/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smb_a1006

TARGET_PREBUILT_KERNEL := device/malata/smb_a1006/kernel

# Override cyanogen squisher to customize our update zip package
TARGET_CUSTOM_RELEASETOOL := ./device/malata/smb_a1006/releasetools/squisher

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/malata/smb_a1006/recovery/recovery_ui.c
