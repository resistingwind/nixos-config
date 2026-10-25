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
    brightnessctl pipewire wireplumber 

    # Development 
    git codex chezmoi
    
    # Software
    kdePackages.dolphin unzip qutebrowser
    librewolf discord-canary sunshine
    fastfetch

    # OBS
    obs-studio obs-studio-plugins.distroav obs-studio-plugins.wlrobs ndi
    obs-studio-plugins.obs-pipewire-audio-capture

    # Hardware
    libsmbios
  ];
}
