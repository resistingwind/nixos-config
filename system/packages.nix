{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; 
  [
    # Drivers
      
    # System
    cloudflared tcpdump nftables
    hyprland hyprlauncher wayland kitty waybar fastfetch 
    brightnessctl pipewire wireplumber hyprshot 

    # Development 
    gradle git python3 jdk25
    codex
    
    # Others
    kdePackages.dolphin firefox unzip
    librewolf obsidian discord-canary figma-linux sunshine

    # OBS
    obs-studio obs-studio-plugins.distroav obs-studio-plugins.wlrobs ndi
    obs-studio-plugins.obs-pipewire-audio-capture
  ];
  
}
