{
  hardware.maccel = {
    enable = true;
    enableCli = true;

    parameters = {
      acceleration = 1000000.0;
      offset = 20.0;
      outputCap = 2.0;
    };
  };

  users.groups.maccel.members = ["sulya"];
}
