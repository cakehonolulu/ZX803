# Copyright (C) 2012 The Android Open Source Project
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
COMMON_PATH := device/softwinner/907

# /system/bin and other
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/app,system/app) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/bin,system/bin) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/xbin,system/xbin) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/usr/idc,system/usr/idc) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/usr/keylayout,system/usr/keylayout) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/lib,system/lib) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/lib/modules,system/lib/modules) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/lib/bluez-plugin,system/lib/bluez-plugin) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/etc/init.d,system/etc/init.d) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/etc/wifi.d,system/etc/wifi.d) \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d) \

# /system/etc
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
	$(COMMON_PATH)/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
	$(COMMON_PATH)/prebuilt/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
	$(COMMON_PATH)/prebuilt/etc/firmware/ath3k-1.fw:system/etc/firmware/ath3k-1.fw \
	$(COMMON_PATH)/prebuilt/etc/firmware/ath3k-1.fw:system/vendor/firmware/ath3k-1.fw \
	$(COMMON_PATH)/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	$(COMMON_PATH)/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	$(COMMON_PATH)/prebuilt/etc/gps.conf:system/etc/gps.conf \
	$(COMMON_PATH)/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \

# Media files
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/hardware/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(COMMON_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(COMMON_PATH)/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \

# /system/lib
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	$(COMMON_PATH)/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	$(COMMON_PATH)/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	$(COMMON_PATH)/prebuilt/lib/libsoftwinner-ril.so:system/lib/libsoftwinner-ril.so \
	$(COMMON_PATH)/prebuilt/lib/libMali.so:system/lib/libMali.so \
	$(COMMON_PATH)/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	$(COMMON_PATH)/prebuilt/lib/libMali.so:obj/lib/libMali.so \
	$(COMMON_PATH)/prebuilt/lib/libUMP.so:obj/lib/libUMP.so \
		
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/prebuilt/usr/icu/icudt48l.dat:system/usr/icu/icudt48l.dat \
	$(COMMON_PATH)/prebuilt/usr/gsensor.cfg:system/usr/gsensor.cfg \

# temporary prebuilt wpa_supplicant
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/907/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/907/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/907/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/907/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

