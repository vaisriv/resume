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
            name = "preview";
            help = "run typst preview server";
            command = builtins.readFile ./scripts/preview.sh;
        }
    ];

    packages = with pkgs; [
        tinymist
    ];

    env = [
        {
            name = "GITROOT";
            eval = "$(git rev-parse --show-toplevel)";
        }
    ];
}
