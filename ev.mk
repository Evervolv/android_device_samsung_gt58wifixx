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

# Product makefile
$(call inherit-product, device/samsung/gt58wifixx/full_gt58wifixx.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

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

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := sedo

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=gt58wifi \
    PRODUCT_NAME=gt58wifixx \
    BUILD_FINGERPRINT=samsung/gt58wifixx/gt58wifi:6.0.1/MMB29M/T350XXU1BPE3:user/release-keys \
    PRIVATE_BUILD_DESC="gt58wifixx-user 6.0.1 MMB29M T350XXU1BPE3 release-keys"
