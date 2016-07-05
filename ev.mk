#
# Copyright (C) 2015 The Evervolv Project
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

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/apns.mk)

# Product makefile
$(call inherit-product, device/samsung/gt58wifixx/full_gt58wifixx.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Boot animation
BOOT_ANIMATION_SIZE := xga

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_gt58wifixx
PRODUCT_DEVICE := gt58wifixx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T350
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=gt58wifixx TARGET_DEVICE=gt58wifi

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := sedo
