FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://server.crt"

MENDER_UPDATE_POLL_INTERVAL_SECONDS = "5"
MENDER_INVENTORY_POLL_INTERVAL_SECONDS = "5"
MENDER_RETRY_POLL_INTERVAL_SECONDS = "30"

PACKAGECONFIG:append = " modules"

MENDER_CERT_LOCATION ?= "${docdir}/mender-client/examples/demo.crt"
# We need this because the certificate will automatically end up in the
# mender-doc package when placed in ${docdir}.
RDEPENDS:${PN}:append = " ${PN}-doc"

do_compile:prepend() {
  bbwarn "You are building with the mender-demo layer, which is not intended for production use"
}
