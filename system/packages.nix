{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; 
  [
    # Desktop
    hyprland wayland kitty hyprshot
    hyprpaper hyprlauncher

    # System
    cloudflared tcpdump nftables
    brightnessctl pipewire wireplumber 

    # Development 
    gradle git python3 jdk25
    codex
    
    # Software
    kdePackages.dolphin firefox unzip
    librewolf discord-canary sunshine
    fastfetch

    # OBS
    obs-studio obs-studio-plugins.distroav obs-studio-plugins.wlrobs ndi
    obs-studio-plugins.obs-pipewire-audio-capture

    # Hardware
    libsmbios

  ];
  
}
