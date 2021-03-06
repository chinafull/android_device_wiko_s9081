# Default config:
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/wiko/s9081/s9081-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/wiko/s9081/overlay

PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

LOCAL_PATH := device/wiko/s9081
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s9081
PRODUCT_DEVICE := s9081

#Permissions dump from device
PRODUCT_COPY_FILES += \
	device/wiko/s9081/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
	device/wiko/s9081/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml
	device/wiko/s9081/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
	device/wiko/s9081/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml
	device/wiko/s9081/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
	device/wiko/s9081/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml
	device/wiko/s9081/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
	device/wiko/s9081/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
	device/wiko/s9081/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
	device/wiko/s9081/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
	device/wiko/s9081/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
	device/wiko/s9081/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
	device/wiko/s9081/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml
	device/wiko/s9081/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
	device/wiko/s9081/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
	device/wiko/s9081/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml
	device/wiko/s9081/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
	device/wiko/s9081/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
	device/wiko/s9081/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
	device/wiko/s9081/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml
	device/wiko/s9081/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml
	device/wiko/s9081/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml
	device/wiko/s9081/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml
	device/wiko/s9081/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml
	device/wiko/s9081/permissions/com.mediatek.location.provider.xml:system/etc/permissions/com.mediatek.location.provider.xml
	device/wiko/s9081/permissions/features.xml:system/etc/permissions/features.xml
	device/wiko/s9081/permissions/gpsconfig.xml:system/etc/permissions/gpsconfig.xml
	device/wiko/s9081/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
	device/wiko/s9081/permissions/platform.xml:system/etc/permissions/platform.xml
	