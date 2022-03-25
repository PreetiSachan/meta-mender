FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
	file://mender.io.png \
"

SPLASH_IMAGES = "file://mender.io.png;outsuffix=default"
