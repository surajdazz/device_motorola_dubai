#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
    case "${1}" in
        vendor/etc/dolby/dax-default.xml)
            sed -i 's|volume-leveler-enable value="true"|volume-leveler-enable value="false"|g' "${2}"
            ;;
        vendor/lib/libmot_chi_desktop_helper.so | vendor/lib64/libmot_chi_desktop_helper.so)
            grep -q "libgui_shim_vendor.so" "${2}" || "${PATCHELF}" --add-needed "libgui_shim_vendor.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=dubai
export DEVICE_COMMON=sm7325-common
export VENDOR=motorola

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
