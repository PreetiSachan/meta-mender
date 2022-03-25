FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://eth.network \
    file://en.network \
"

do_install:append() {
        install -d ${D}${sysconfdir}/systemd/network
        install -m 0755 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/network
        install -m 0755 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/network
}
