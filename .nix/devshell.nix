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
}
