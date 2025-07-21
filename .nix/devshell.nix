{
    pkgs,
    perSystem,
    ...
}:
perSystem.devshell.mkShell {
    name = "resume devshell";
    motd = ''
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
            help = "Typst LSP";
        }
    ];
}
