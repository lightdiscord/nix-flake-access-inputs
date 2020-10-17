{
  description = "Pass flake inputs to nixos modules";

  outputs = { self, ... }: {
    nixosModule = { lib, ... }: {
      options.flakes.inputs = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Flake inputs passed to each module.";
      };
    };
  };
}
