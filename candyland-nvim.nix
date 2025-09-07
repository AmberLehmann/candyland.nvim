{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "candyland-nvim";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "AmberLehmann";
    repo = "candyland.nvim";
    rev = "neovim-colorscheme";
    hash = "sha256-KEHMnpyJOhdF8ZPWuKF3uP7UX5fnzE31LMe+XxHK+i8=";
  };

  meta = {
    description = "A cute pink and blue colorscheme for Neovim";
    homepage = "https://github.com/AmberLehmann/candyland.nvim";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "candyland-nvim";
    platforms = lib.platforms.all;
  };
}
