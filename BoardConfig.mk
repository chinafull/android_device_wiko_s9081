# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the proprietary version
-include vendor/wiko/s9081/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX531

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

## Graphics
# Enable OpenGL Hardware Acceleration
USE_OPENGL_RENDERER := true

# TARGET_BOARD_PLATFORM := unknown
TARGET_BOOTLOADER_BOARD_NAME := s9081

### TODO AND TO CHECK
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
# Checked in sysinfo
BOARD_KERNEL_PAGESIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096
#get those from scatter
## WILL CHANGE IT (lots of devices don't care of exactness so i think it's the "max" size)
BOARD_BOOTIMAGE_PARTITION_SIZE := 6684672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 537919488
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1611661312
#and those from /proc/emmc
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 409600000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1228800000

TARGET_PREBUILT_KERNEL := device/wiko/s9081/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

