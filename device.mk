$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Language
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# The gps config appropriate for this device 
$(call inherit-product, device/common/gps/gps_us_supl.mk) 

# Vendor
$(call inherit-product, vendor/leeco/x3/x3-vendor-blobs.mk)

# Overlay Folder
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Folder path
LOCAL_PATH := device/leeco/x3

# Screen density
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
#TARGET_OTA_ASSERT_DEVICE := x3,X500,X507,X509,X3,x500,x507,x509,X502,x502

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6795 \
    android.hardware.power@1.0-impl \

# Camera
PRODUCT_PACKAGES += \
    Snap

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Torch
PRODUCT_PACKAGES += \
    Torch

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2 \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0
    ro.secure=0
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=64m \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=512m \
    ro.dalvik.vm.native.bridge=0 \
    persist.sys.usb.config=mtp \
    persist.debug.xlog.enable=0 \
    camera.disable_zsl_mode=1 \
    persist.sys.timezone=Europe/Warsaw

# PRODUCT_PROPERTY_OVERRIDES
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril.config=fakeiccid  \
    persist.call_recording.enabled=true \
    persist.call_recording.src=1 

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libaudiopolicymanagerdefault \
    libtinyalsa \
    libtinycompress \
    libtinyxml \
    audio_policy.stub \
    libtinymix \
    libfs_mgr

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    wificond \
    wifilogd \
    wpa_supplicant
 
# Media	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml


# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs \
    ext4_resize \
    libext2_blkid \
    libext2_uuid_static  \
    superumount 
    
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
# Var patch
#ifneq ($(TARGET_BUILD_VARIANT),user,userdebug,eng)
# ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
#  ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/ramdisk/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/ramdisk/fstab.mt6795:root/fstab.mt6795 \
    $(LOCAL_PATH)/ramdisk/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6795.rc:root/init.mt6795.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6795.usb.rc:root/init.mt6795.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.mt6795.rc:root/ueventd.mt6795.rc \
    $(LOCAL_PATH)/ramdisk/init.mal.rc:root/init.mal.rc \
    $(LOCAL_PATH)/ramdisk/init.volte.rc:root/init.volte.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.configfs.rc:root/init.usb.configfs.rc \
    $(LOCAL_PATH)/ramdisk/init.trustonic.rc:root/init.trustonic.rc \


PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/permissions/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml\
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/mtk_clear_motion.cfg:system/etc/mtk_clear_motion.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:system/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_param/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_blacklist.conf:system/etc/bluetooth/auto_pair_blacklist.conf \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(LOCAL_PATH)/configs/bluetooth/btconfig.xml:system/etc/bluetooth/btconfig.xml \
    $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl\
    $(LOCAL_PATH)/configs/keylayout/mtk-tpd.kl:system/usr/keylayout/mtk-tpd.kl\
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx_i2c.kl:system/usr/keylayout/synaptics_dsx_i2c.kl\
    $(LOCAL_PATH)/configs/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ril_conf/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/ril_conf/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/ril_conf/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/.tp/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/.tp/.thermal_policy_00:system/etc/.tp/.thermal_policy_00 \
    $(LOCAL_PATH)/configs/.tp/.thermal_policy_game_01:system/etc/.tp/.thermal_policy_game_01 \
    $(LOCAL_PATH)/configs/.tp/.thermal_policy_01:system/etc/.tp/.thermal_policy_01

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radvd/radvd.conf:system/etc/radvd/radvd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/slp_conf:system/etc/slp_conf \
    $(LOCAL_PATH)/configs/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/configs/custom.conf:system/etc/custom.conf \
    $(LOCAL_PATH)/configs/mtklog-config.prop:system/etc/mtklog-config.prop \
    $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/configs/perfservboosttbl.txt:system/etc/perfservboosttbl.txt \
    $(LOCAL_PATH)/configs/perfservscntbl.txt:system/etc/perfservscntbl.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
    
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml
    

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny


# MTK Helpers 
PRODUCT_PACKAGES += \
   libccci_util   \
   libmtk_symbols

# Sensor Calibration
PRODUCT_PACKAGES += libem_sensor_jni

# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice

# Display
PRODUCT_PACKAGES += \
    libion
    
# GPS
PRODUCT_PACKAGES += \
    gps.mt6795 \
    libcurl

# Mediaserver with system group
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init/mediaserver.rc:system/etc/init/mediaserver.rc 
    
# camera legacy
PRODUCT_PACKAGES += \
    fs_config_files
    
PRODUCT_PACKAGES += \
    libm4u  \
    libbwc  

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += libprotobuf-cpp-full

# Vendor Interface Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/manifest.xml \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

# Fingerprint Sensor
PRODUCT_PACKAGES += \
    fingerprintd \
    android.hardware.biometrics.fingerprint@2.1-impl
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl 
    
# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl
    
PRODUCT_PACKAGES += \
    context_hub.default \
    android.hardware.sensors@1.0-impl \
    android.hardware.contexthub@1.0-impl

# HW Composer
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl

# new gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl
    
#ifeq ($(ENABLE_TREBLE), true)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service 
#endif

# Thermal packages
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl
    
# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl 

#ifeq ($(ENABLE_TREBLE), true)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-service
#endif

PRODUCT_FULL_TREBLE_OVERRIDE := true

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.bluetooth@1.0-service \
    android.hardware.contexthub@1.0-service \
    android.hardware.gnss@1.0-service \
    android.hardware.drm@1.0-service \
    android.hardware.light@2.0-service \
    android.hardware.memtrack@1.0-service \
    android.hardware.nfc@1.0-service \
    android.hardware.power@1.0-service \
    android.hardware.sensors@1.0-service \
    android.hardware.thermal@1.0-service \
    android.hardware.vr@1.0-service 

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

#gralloc	
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl 
	
#memtrack
PRODUCT_PACKAGES += \
	android.hardware.memtrack@1.0-impl
	
#drm HAL
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \

#CAMERA
PRODUCT_PACKAGES += \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

#GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

#USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Test HAL for hwbinder performance benchmark.
PRODUCT_PACKAGES += \
    android.hardware.tests.libhwbinder@1.0-impl
	
# Test HAL for FMQ performance benchmark.
PRODUCT_PACKAGES += \
    android.hardware.tests.msgq@1.0-impl
	
# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.vndk.version=26.1.0 \
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0.vndk-sp\
    android.hardware.graphics.allocator@2.0.vndk-sp\
    android.hardware.graphics.mapper@2.0.vndk-sp\
    android.hardware.graphics.common@1.0.vndk-sp\
    android.hidl.base@1.0.vndk-sp\
    libhwbinder.vndk-sp\
    libbase.vndk-sp\
    libcutils.vndk-sp\
    libhardware.vndk-sp\
    libhidlbase.vndk-sp\
    libhidltransport.vndk-sp\
    libutils.vndk-sp\
    libc++.vndk-sp\
    libRS_internal.vndk-sp\
    libRSDriver.vndk-sp\
    libRSCpuRef.vndk-sp\
    libbcinfo.vndk-sp\
    libblas.vndk-sp\
    libft2.vndk-sp\
    libpng.vndk-sp\
    libcompiler_rt.vndk-sp\
    libbacktrace.vndk-sp\
    libunwind.vndk-sp\
    liblzma.vndk-sp

PRODUCT_PACKAGES += \
    PerformanceControl \
    Stk

# GPS force mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.force.gps.mode=gnss
