{ config, lib, pkgs, ... }:

{
  imports = [
    ../../common/pc/laptop
    ../../common/pc/laptop/ssd
    ../../common/cpu/intel
  ];

  # needed for the built-in keyboard during initrd, eg, for disk passphrase
  boot.initrd.availableKernelModules = [ "battery" ];
}
