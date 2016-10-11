# Copyright (C) 2015 The CyanogenMod Project
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

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gt58wifixx/gt58wifixx-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58wifixx/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gt58wifixx/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/gt58wifixx/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/gt58wifixx/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/samsung/gt58wifixx/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/samsung/gt58wifixx/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/samsung/gt58wifixx/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# Ril
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=1

# Inherit from gt58-common
$(call inherit-product, device/samsung/gt5-common/common.mk)

