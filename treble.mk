# Sensor Calibration
PRODUCT_PACKAGES += libem_sensor_jni

# Wifi
PRODUCT_PACKAGES += \
	android.hardware.wifi@1.0-service

# GPS
PRODUCT_PACKAGES += \
	android.hardware.gnss@1.0-impl

# Audio HAL
PRODUCT_PACKAGES += \
	android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl \
	android.hardware.audio@2.0-service
#	android.hardware.soundtrigger@2.0-impl

# Bluetooth
PRODUCT_PACKAGES += \
	android.hardware.bluetooth@1.0-impl \
	android.hardware.bluetooth@1.0-service

# Camera HAL
PRODUCT_PACKAGES += \
	camera.device@1.0-impl \
	camera.device@3.2-impl \
	android.hardware.camera.provider@2.4-impl \
	android.hardware.camera.provider@2.4-service

# Graphic HAL
PRODUCT_PACKAGES += \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl

# Keymaster HAL
PRODUCT_PACKAGES += \
	android.hardware.keymaster@3.0-impl

# Memtrack HAL
PRODUCT_PACKAGES += \
	android.hardware.memtrack@1.0-impl

# Power HAL
PRODUCT_PACKAGES += \
	android.hardware.power@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
	android.hardware.light@2.0-impl \
	android.hardware.light@2.0-service \
	android.hardware.sensors@1.0-impl \
	android.hardware.sensors@1.0-service

#USB HAL
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service
# Fingerprint Sensor
PRODUCT_PACKAGES += \
    fingerprintd \
    android.hardware.biometrics.fingerprint@2.1-impl

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Light HAL
PRODUCT_PACKAGES += \
    context_hub.default \
    android.hardware.contexthub@1.0-impl

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
    android.hardware.broadcastradio@1.0-impl \

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
    android.hardware.memtrack@1.0-service \
    android.hardware.nfc@1.0-service \
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

#GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

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
