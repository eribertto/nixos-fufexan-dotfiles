{ configs, pkgs, ... }:

{
  # enable DHCP
  networking = {
    hostName = "nixpc";
    useDHCP = false;
    interfaces.enp3s0.useDHCP = true;
  };
}
