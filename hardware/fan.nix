{ pkgs, ... }:
{
  systemd.services.smbios-thermal = {
    wantedBy = [ "multi-user.target" ];
    after = [ "systemd-modules-load.service" ];
    script = "${pkgs.libsmbios}/bin/smbios-thermal-ctl --set-thermal-mode performance";
  };
}
