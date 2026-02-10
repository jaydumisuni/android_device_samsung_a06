#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a06

# -------------------------------------------------
# Product Identity
# -------------------------------------------------
PRODUCT_DEVICE := a06
PRODUCT_NAME := twrp_a06
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A06
PRODUCT_MANUFACTURER := samsung

# -------------------------------------------------
# Recovery Identity (VERSIONING)
# -------------------------------------------------
TW_DEVICE_VERSION := v1.2
TW_RECOVERY_VERSION := TWRP-A06-v1.2

# -------------------------------------------------
# Allow missing deps (TWRP minimal manifest)
# -------------------------------------------------
ALLOW_MISSING_DEPENDENCIES := true

# -------------------------------------------------
# A/B & Dynamic Partitions
# -------------------------------------------------
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# -------------------------------------------------
# Filesystem Support
# -------------------------------------------------
PRODUCT_PACKAGES += \
    fsck.ext4 \
    fsck.f2fs \
    mkfs.ext4 \
    mkfs.f2fs

# -------------------------------------------------
# Fastbootd (Userspace Fastboot)
# -------------------------------------------------
PRODUCT_PACKAGES += \
    fastbootd

# -------------------------------------------------
# TWRP Core
# -------------------------------------------------
PRODUCT_PACKAGES += \
    twrp \
    toolbox \
    toybox

# -------------------------------------------------
# Recovery Init Scripts
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6768.rc:recovery/root/init.recovery.mt6768.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.samsung.rc:recovery/root/init.recovery.samsung.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/dsms.rc:recovery/root/dsms.rc \
    $(DEVICE_PATH)/recovery/root/dsms_common.rc:recovery/root/dsms_common.rc \
    $(DEVICE_PATH)/recovery/root/snapuserd.rc:recovery/root/snapuserd.rc

# -------------------------------------------------
# Recovery FSTAB
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab

# -------------------------------------------------
# TWRP Flags
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags

# -------------------------------------------------
# Firmware (Touch / Sensors / Modem Support)
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/firmware:recovery/root/vendor/firmware

# -------------------------------------------------
# Properties
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/system.prop:recovery/root/system.prop

# -------------------------------------------------
# End of File
# -------------------------------------------------
