{
    inputs,
    system,
    pkgs,
    ...
}:
inputs.typix.lib.${system}.buildTypstProjectLocal {
    src = ../../src;
    typstSource = "cover-letter.typ";

    unstable_typstPackages = [
        {
            name = "clickworthy-resume";
            version = "1.0.0";
            hash = "sha256-5xVvySd09HboLCleSQuvjN7+EeLpuJzsrWcMMmVbLS8=";
        }
    ];
}
