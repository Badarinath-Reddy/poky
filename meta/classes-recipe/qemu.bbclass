#
# Copyright OpenEmbedded Contributors
#
# SPDX-License-Identifier: MIT
#

#
# This class contains functions for recipes that need QEMU or test for its
# existence.
#

python () {
    funcs = ["qemu_target_binary", "qemu_wrapper_cmdline", "qemu_run_binary"]
    bb.warn("qemu.bbclass has been deprecated, please remove 'inherit qemu' and replace function invocation:\n\t%s" %
            '\n\t'.join(["{0} -> oe.qemu.{0}".format(f) for f in funcs]))
}

def qemu_target_binary(data):
    return oe.qemu.qemu_target_binary(data)

def qemu_wrapper_cmdline(data, rootfs_path, library_paths):
    return oe.qemu.qemu_wrapper_cmdline(data, rootfs_path, library_paths)

def qemu_run_binary(data, rootfs_path, binary):
    return oe.qemu.qemu_run_binary(data, rootfs_path, binary)
