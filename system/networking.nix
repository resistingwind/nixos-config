{ ... }:
{
  networking = {
    hostName = "mai";
    networkmanager.enable = true;
    
    firewall = {
      allowedTCPPorts = [ 25565 8080 ];
      allowedUDPPorts = [ 24454 ];
    };

  };
}
