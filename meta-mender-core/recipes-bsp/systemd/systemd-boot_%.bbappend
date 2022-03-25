FILES:${PN}:remove_mender-install = " /boot/EFI/BOOT/${SYSTEMD_BOOT_IMAGE} "
FILES:${PN}:append_mender-install = " ${MENDER_BOOT_PART_MOUNT_LOCATION}/EFI/BOOT/${SYSTEMD_BOOT_IMAGE} "

do_install:append() {
    if "${@bb.utils.contains('DISTRO_FEATURES', 'mender-install', 'true', 'false', d)}"; then
        install -d ${D}/${MENDER_BOOT_PART_MOUNT_LOCATION}
        mv ${D}/boot/EFI ${D}/${MENDER_BOOT_PART_MOUNT_LOCATION}
        rmdir ${D}/boot || true
    fi
}