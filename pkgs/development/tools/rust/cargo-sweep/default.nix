{ lib, rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "cargo-sweep";
  version = "0.6.2";

  src = fetchFromGitHub {
    owner = "holmgr";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-tumcGnYqY/FGP8UWA0ccfdAK49LBcT8qH6SshrDXNAI=";
  };

  cargoSha256 = "sha256-fcosKyGOy0SKrHbsKdxQJimelt1ByAM4YKo7WpHV8CA=";

  meta = with lib; {
    description = "A Cargo subcommand for cleaning up unused build files generated by Cargo";
    homepage = "https://github.com/holmgr/cargo-sweep";
    license = licenses.mit;
    maintainers = with maintainers; [ xrelkd matthiasbeyer ];
  };
}
