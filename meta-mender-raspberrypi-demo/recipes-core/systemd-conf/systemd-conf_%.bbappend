FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " file://wireless.network"

do_install:append() {
        install -d ${D}${sysconfdir}/systemd/network
        install -m 0755 ${WORKDIR}/wireless.network ${D}${sysconfdir}/systemd/network
}
