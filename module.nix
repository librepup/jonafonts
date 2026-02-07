{ config, lib, pkgs, ... }:
with lib;
{
  options.jonafonts = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = "Enable the Jonafonts Font Bundle for your NixOS System.";
    };
  };
  config = mkIf config.jonafonts.enable {
    fonts.packages = (config.fonts.packages or []) ++ [ pkgs.jonafonts ];
  };
}
