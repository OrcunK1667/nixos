{ config, pkgs, inputs, ... }:
{
  home.username = "orcunlinux";
  home.homeDirectory = "/home/orcunlinux";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [	
	inputs.caelestia.packages.${pkgs.stdenv.hostPlatform.system}.with-shell
	matugen
	brightnessctl
	playerctl
	pamixer
	foot
	thunar
	fastfetch
	fish
	starship
	wl-clipboard
	cliphist
	hyprpicker
	libnotify
	grim
	slurp
	swappy
	wf-recorder
  ];
  home.sessionVariables = {
	XDG_SESSION_TYPE = "wayland";
	NIXOS_OZONE_WL = "1";
	WLR_NO_HARDWARE_CURSORS = "1";
  };

  programs.home-manager.enable = true;
  }
