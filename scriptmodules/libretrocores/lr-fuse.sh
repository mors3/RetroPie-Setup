#!/usr/bin/env bash

# This file is part of RetroPie.
# 
# (c) Copyright 2012-2015  Florian Müller (contact@petrockblock.com)
# 
# See the LICENSE.md file at the top-level directory of this distribution and 
# at https://raw.githubusercontent.com/petrockblog/RetroPie-Setup/master/LICENSE.md.
#

rp_module_id="lr-fuse"
rp_module_desc="ZX Spectrum emu - Fuse port for libretro"
rp_module_menus="4+"

function sources_lr-fuse() {
    gitPullOrClone "$md_build" https://github.com/libretro/fuse-libretro.git
}

function build_lr-fuse() {
    make -f Makefile.libretro clean
    make -f Makefile.libretro
    md_ret_require="$md_build/fuse_libretro.so"
}

function install_lr-fuse() {
    md_ret_files=(
        'fuse_libretro.so'
        'LICENSE'
        'README.md'
    )
}

function configure_lr-fuse() {
    mkRomDir "zxspectrum"
    ensureSystemretroconfig "zxspectrum"

    addSystem 0 "$md_id" "zxspectrum" "$md_inst/fuse_libretro.so"
}
