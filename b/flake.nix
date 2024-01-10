{
  description = "Flake B";

  inputs = {
    a.url = "path:./../a";
  };

  outputs = { a }: {
    lib = {
      bar = a.lib.bar;
    };
  };
}
