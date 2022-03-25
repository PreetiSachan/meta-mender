FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-${PV}:"
SRC_URI:append_raspberrypi4 = " file://0001-configs-rpi4-mender-integration.patch"
