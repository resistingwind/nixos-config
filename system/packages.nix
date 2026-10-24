{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; 
  [
    # System
    cloudflared tcpdump nftables
    hyprland hyprlauncher wayland kitty fastfetch 
    brightnessctl pipewire wireplumber hyprshot 

    # Development 
    gradle git python3 jdk25
    codex
    
    # Software
    kdePackages.dolphin firefox unzip
    librewolf discord-canary sunshine

    # OBS
    obs-studio obs-studio-plugins.distroav obs-studio-plugins.wlrobs ndi
    obs-studio-plugins.obs-pipewire-audio-capture

    # Hardware
    libsmbios

  ];
  
}
