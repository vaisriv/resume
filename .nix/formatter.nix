{
    pkgs,
    inputs,
    ...
}:
inputs.treefmt-nix.lib.mkWrapper pkgs {
    projectRootFile = "flake.nix";

    # nix
    programs.deadnix.enable = true;
    programs.alejandra.enable = true;
    settings.formatter = {
        alejandra = {
            options = [
                "--experimental-config"
                "./.nix/fmt/alejandra.toml"
            ];
        };
    };

    # typst
    programs.typstyle.enable = true;
    settings.formatter = {
        typstyle = {
            options = [
                "--tab-width"
                "4"
            ];
        };
    };
}
