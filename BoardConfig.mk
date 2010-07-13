# Copyright (C) 2009 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/yuhua/x2/BoardConfigVendor.mk

# Get the generic variables that are common between all versions
# of x2
#include device/htc/passion-common/BoardConfigCommon.mk

#TARGET_NO_BOOTLOADER := true

TARGET_RECOVERY_UI_LIB := librecovery_ui_x2 librecovery_ui_yuhua

# XScale-V3 based processor rev 3 (v51)
TARGET_CPU_ABI := armeabi-v51
#TARGET_CPU_ABI2 := armeabi