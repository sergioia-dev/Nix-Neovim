{
  vimUtils,
  fetchFromGitHub,
}:

vimUtils.buildVimPlugin {
  pname = "pi-nvim";
  version = "unstable-2026-07-23";
  src = fetchFromGitHub {
    owner = "carderne";
    repo = "pi-nvim";
    rev = "main";
    sha256 = "sha256-yJzhyABIWltle7DJlSUXLAAZ0BFzZuzr/qW0sqHVzZc=";
  };
  meta.description = "Bridge between pi coding agent and Neovim";
}
