{ pkgs, ... }:
{
  imports = [
    ./vim.nix
    ./avahi.nix
    ./sunshine.nix
  ];

  nixpkgs.overlays = [
    (final: super: {
      comic-true-mono = pkgs.callPackage ./comic-true-mono.nix {};
    })
  ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; 
  [
    # Desktop
    hyprland wayland kitty hyprshot
    hyprpaper hyprlauncher

    # System
    cloudflared tcpdump nftables
    brightnessctl 

    # Development 
    git codex chezmoi
    
    # Software
    kdePackages.dolphin unzip qutebrowser
    librewolf discord-canary sunshine
    fastfetch ollama

    # OBS
    obs-studio obs-studio-plugins.distroav obs-studio-plugins.wlrobs ndi
    obs-studio-plugins.obs-pipewire-audio-capture

    # Hardware
    fan2go lm_sensors
  ];
}
