{ pkgs, ... }:
{
  services.sunshine = {
    enable = true;
    autoStart = false;
    capSysAdmin = true;
    openFirewall = true;
  };

  systemd.user.services.sunshine = {
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStartPre = "${pkgs.networkmanager}/bin/nm-online -q -t 120";

      TimeoutStartSec = 150;
    };

  };
}
