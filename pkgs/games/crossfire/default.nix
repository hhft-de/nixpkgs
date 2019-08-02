{ callPackage, ... }:

rec {
  crossfire-server = callPackage ./crossfire-server.nix {
    version = "latest";
    rev = 22111;
    sha256 = "04fjif6zv642n2zlw27cgzkak2kknwrxqzg42bvzl7q901bsr9l7";
    maps = crossfire-maps; arch = crossfire-arch;
  };

  crossfire-arch = callPackage ./crossfire-arch.nix {
    version = "latest";
    rev = 22111;
    sha256 = "0l4rp3idvbhknpxxs0w4i4nqfg01wblzm4v4j375xwxxbf00j0ms";
  };

  crossfire-maps = callPackage ./crossfire-maps.nix {
    version = "latest";
    rev = 22111;
    sha256 = "1dwfc84acjvbjgjakkb8z8pdlksbsn90j0z8z8rq37lqx0kx1sap";
  };
}
