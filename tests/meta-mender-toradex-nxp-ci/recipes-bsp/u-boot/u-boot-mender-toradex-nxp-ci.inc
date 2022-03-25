FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append_colibri-imx7 = " \
    file://0001-colibri-imx7-Mender-QA-extend-env-to-support-integra.patch \
    file://0002-colibri-imx7-Mender-QA-reset-the-board-on-panic.patch \
    "
