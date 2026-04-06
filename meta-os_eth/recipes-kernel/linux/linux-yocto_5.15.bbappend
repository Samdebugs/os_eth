DESCRIPTION = "Custom Linux kernel with RT and hardware control"
SECTION = "kernel"
LICENSE = "GPLv2"

require recipes-kernel/linux/linux-yocto.inc

SRC_URI += "file://custom-patches/"

LINUX_VERSION ?= "5.15"
LINUX_VERSION_EXTENSION = "-custom"

PV = "${LINUX_VERSION}+git${SRCPV}"

KCONFIG_MODE = "--alldefrag"

# Enable RT
KERNEL_FEATURES_append = " features/rt/rt.scc"

# Custom config fragments
SRC_URI += "file://cfg/usb-control.cfg"
SRC_URI += "file://cfg/hdmi-control.cfg"
SRC_URI += "file://cfg/ethernet-control.cfg"