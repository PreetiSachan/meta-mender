FILESEXTRAPATHS:prepend := "${THISDIR}/patches:${THISDIR}/files:"

SRC_URI:append = " file://0001-Set-correct-load-addresses-for-QEMU.patch"
SRC_URI:append_vexpress-qemu-flash = " file://0001-vexpress-qemu-specific-fixes-for-Flash.patch"
