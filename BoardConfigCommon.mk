# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8930
-include device/samsung/msm8930-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/wilcox-common/include

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom user_debug=23 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/msm8930
TARGET_KERNEL_CONFIG         := cyanogen_cane_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8930_cane_wilcox_eur_lte_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/wilcox-common/rootdir/fstab.qcom
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5821660160
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/wilcox-common/bluetooth

# Audio
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_FLUENCE_FOR_VOIP := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_SEPERATED_VOIP := true
QCOM_CSDCLIENT_ENABLED := false

# Enable QCOM FM feature
AUDIO_FEATURE_ENABLED_FM := true
QCOM_FM_ENABLED := true
BOARD_USES_SEPERATED_FM := true

# Allow suspend in charge mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Camera
TARGET_NEED_CAMERA_ZSL := true
TARGET_NEED_FFC_PICTURE_FIXUP := true
TARGET_NEED_FFC_VIDEO_FIXUP := true
TARGET_NEED_DISABLE_FACE_DETECTION := true
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true

# Build our own PowerHAL
TARGET_POWERHAL_VARIANT :=

# Custom RIL class
BOARD_RIL_CLASS := ../../../device/samsung/wilcox-common/ril/
