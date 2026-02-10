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
# Recovery Identity (Versioning)
# -------------------------------------------------
TW_DEVICE_VERSION := v1.2
TW_RECOVERY_VERSION := TWRP-A06-v1.2

# -------------------------------------------------
# Allow missing deps (TWRP minimal manifest)
# -------------------------------------------------
ALLOW_MISSING_DEPENDENCIES := true

# -------------------------------------------------
# Dynamic Partitions / AVB
# -------------------------------------------------
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# -------------------------------------------------
# Copy vendor files correctly (FIX for firmware error)
# -------------------------------------------------
RECOVERY_COPY_OUT_VENDOR := vendor

# -------------------------------------------------
# Filesystem Support
# -------------------------------------------------
PRODUCT_PACKAGES += \
    fsck.ext4 \
    fsck.f2fs \
    mkfs.ext4 \
    mkfs.f2fs \
    e2fsck \
    resize2fs \
    tune2fs

# -------------------------------------------------
# Fastbootd (userspace fastboot)
# -------------------------------------------------
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-service-mock

# -------------------------------------------------
# Health / Properties
# -------------------------------------------------
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# -------------------------------------------------
# Recovery Init Scripts
# -------------------------------------------------
PRODUCT_PACKAGES += \
    init.recovery.mt6768.rc \
    init.recovery.samsung.rc \
    init.recovery.usb.rc \
    snapuserd.rc \
    dsms.rc \
    dsms_common.rc

# -------------------------------------------------
# Default Properties
# -------------------------------------------------
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb

# -------------------------------------------------
# A/B & OTA (disabled – recovery only)
# -------------------------------------------------
AB_OTA_UPDATER := false
