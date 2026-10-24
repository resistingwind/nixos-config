{ ... }:
{
  services.thermald.enable = true;

  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
      scaling_max_freq = 2600000;
      energy_perf_bias = "power";
      energy_performance_preference = "power";
    };
    charger = {
      governor = "powersave";
      turbo = "never";
      scaling_max_freq = 2600000;
      energy_perf_bias = "power";
      energy_performance_preference = "power";
    };
  };

  systemd.services.limit-cpu-power = {
    description = "Set CPU RAPL Power Limits to keep laptop cool";
    wantedBy = [ "multi-user.target" ];
    after = [ "sys-devices-virtual-powercap-intel--rapl.device" ];
    script = ''
      # Set PL1 (Long-term power) to 15 Watts (15,000,000 uW)
      if [ -f /sys/class/powercap/intel-rapl:0/constraint_0_power_limit_uw ]; then
        echo 15000000 > /sys/class/powercap/intel-rapl:0/constraint_0_power_limit_uw
      fi

      # Set PL2 (Short-term power) to 20 Watts (20,000,000 uW)
      if [ -f /sys/class/powercap/intel-rapl:0/constraint_1_power_limit_uw ]; then
        echo 20000000 > /sys/class/powercap/intel-rapl:0/constraint_1_power_limit_uw
      fi
    '';
  };
}
