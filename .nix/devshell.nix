{
    pkgs,
    perSystem,
    ...
}:
perSystem.devshell.mkShell {
    motd =
        # bash
        ''
            📝 {51}resume{reset} devshell
            $(type -p menu &>/dev/null && menu)
        '';

    commands = [
        {
            name = "nvim";
            package = perSystem.nvf-config.lua;
            help = "customized neovim package";
        }
        {
            name = "tinymist";
            package = pkgs.tinymist;
            help = "typst lsp";
        }
    ];
}
